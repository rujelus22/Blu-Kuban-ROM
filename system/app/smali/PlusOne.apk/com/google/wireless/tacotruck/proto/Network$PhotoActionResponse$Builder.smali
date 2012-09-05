.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41136
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41137
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 41138
    return-void
.end method

.method static synthetic access$57000(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41131
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$57100()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 1

    .prologue
    .line 41131
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41169
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    .line 41170
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 41171
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 41174
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 1

    .prologue
    .line 41143
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41141
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    .registers 3

    .prologue
    .line 41178
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 41179
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 1

    .prologue
    .line 41147
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41148
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 3

    .prologue
    .line 41152
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

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
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    .registers 2

    .prologue
    .line 41156
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    return-object v0
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
    .line 41131
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

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
    .line 41131
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41196
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 41197
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 41202
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41204
    :pswitch_d
    return-object p0

    .line 41197
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 41183
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 41184
    :cond_6
    return-object p0
.end method
