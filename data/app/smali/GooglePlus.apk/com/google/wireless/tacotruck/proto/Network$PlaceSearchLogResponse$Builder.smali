.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28362
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28363
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->maybeForceBuilderInitialization()V

    .line 28364
    return-void
.end method

.method static synthetic access$39100()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 1

    .prologue
    .line 28357
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 1

    .prologue
    .line 28369
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28367
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 3

    .prologue
    .line 28386
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    .line 28387
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28388
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28390
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 3

    .prologue
    .line 28404
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 28405
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 1

    .prologue
    .line 28373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28374
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 3

    .prologue
    .line 28378
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

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
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 2

    .prologue
    .line 28382
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 28414
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
    .line 28357
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28357
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

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
    .line 28357
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28422
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 28423
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 28428
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28430
    :pswitch_d
    return-object p0

    .line 28423
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 28409
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 28410
    :cond_6
    return-object p0
.end method
