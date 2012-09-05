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
    .line 30989
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30990
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 30991
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 1

    .prologue
    .line 30996
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30994
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 3

    .prologue
    .line 31031
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 31032
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 1

    .prologue
    .line 31000
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31001
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 3

    .prologue
    .line 31005
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
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 2

    .prologue
    .line 31009
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

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
    .line 30984
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

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
    .line 30984
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
    .line 31049
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 31050
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 31055
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31057
    :pswitch_d
    return-object p0

    .line 31050
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 31036
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 31037
    :cond_6
    return-object p0
.end method
