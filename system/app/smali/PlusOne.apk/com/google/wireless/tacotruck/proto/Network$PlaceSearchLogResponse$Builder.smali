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
    .line 27754
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27755
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->maybeForceBuilderInitialization()V

    .line 27756
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 1

    .prologue
    .line 27761
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27759
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 3

    .prologue
    .line 27796
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 27797
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 1

    .prologue
    .line 27765
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27766
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 3

    .prologue
    .line 27770
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
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 2

    .prologue
    .line 27774
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

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
    .line 27749
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

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
    .line 27749
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
    .line 27814
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 27815
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 27820
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27822
    :pswitch_d
    return-object p0

    .line 27815
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 27801
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 27802
    :cond_6
    return-object p0
.end method
