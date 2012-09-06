.class public final Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37840
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37841
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->maybeForceBuilderInitialization()V

    .line 37842
    return-void
.end method

.method static synthetic access$52500()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 1

    .prologue
    .line 37835
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 1

    .prologue
    .line 37847
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37845
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    .registers 3

    .prologue
    .line 37864
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    .line 37865
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37866
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37868
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    .registers 3

    .prologue
    .line 37882
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 37883
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 1

    .prologue
    .line 37851
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37852
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 3

    .prologue
    .line 37856
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

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
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37835
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    .registers 2

    .prologue
    .line 37860
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 37892
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
    .line 37835
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37835
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

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
    .line 37835
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37900
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 37901
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 37906
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37908
    :pswitch_d
    return-object p0

    .line 37901
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 37887
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 37888
    :cond_6
    return-object p0
.end method
