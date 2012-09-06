.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22647
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->maybeForceBuilderInitialization()V

    .line 22648
    return-void
.end method

.method static synthetic access$30900()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 22641
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 22653
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22651
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    .registers 3

    .prologue
    .line 22670
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    .line 22671
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22672
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22674
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    .registers 3

    .prologue
    .line 22688
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 22689
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 22657
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22658
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 3

    .prologue
    .line 22662
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

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
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    .registers 2

    .prologue
    .line 22666
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 22698
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
    .line 22641
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22641
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

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
    .line 22641
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22706
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22707
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 22712
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22714
    :pswitch_d
    return-object p0

    .line 22707
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22693
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 22694
    :cond_6
    return-object p0
.end method
