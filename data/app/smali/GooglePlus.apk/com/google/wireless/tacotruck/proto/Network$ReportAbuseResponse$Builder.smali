.class public final Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23289
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23290
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->maybeForceBuilderInitialization()V

    .line 23291
    return-void
.end method

.method static synthetic access$31800()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 1

    .prologue
    .line 23284
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 1

    .prologue
    .line 23296
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23294
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 3

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    .line 23314
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23315
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23317
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 3

    .prologue
    .line 23331
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 23332
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 1

    .prologue
    .line 23300
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23301
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 3

    .prologue
    .line 23305
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

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
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 2

    .prologue
    .line 23309
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 23341
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
    .line 23284
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23284
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

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
    .line 23284
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23349
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 23350
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 23355
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23357
    :pswitch_d
    return-object p0

    .line 23350
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23336
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 23337
    :cond_6
    return-object p0
.end method
