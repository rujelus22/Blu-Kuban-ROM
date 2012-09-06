.class public final Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31597
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 31598
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 31599
    return-void
.end method

.method static synthetic access$43500()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 1

    .prologue
    .line 31592
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 1

    .prologue
    .line 31604
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31602
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 3

    .prologue
    .line 31621
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    .line 31622
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 31623
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 31625
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 3

    .prologue
    .line 31639
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 31640
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 1

    .prologue
    .line 31608
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31609
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 3

    .prologue
    .line 31613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

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
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 2

    .prologue
    .line 31617
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 31649
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
    .line 31592
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 31592
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

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
    .line 31592
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31657
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 31658
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 31663
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31665
    :pswitch_d
    return-object p0

    .line 31658
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 31644
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 31645
    :cond_6
    return-object p0
.end method
