.class public final Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44038
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44039
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 44040
    return-void
.end method

.method static synthetic access$61400(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44033
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$61500()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44033
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44071
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    .line 44072
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 44073
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 44076
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44045
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44043
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 3

    .prologue
    .line 44080
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 44081
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44049
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44050
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 3

    .prologue
    .line 44054
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

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
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44033
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2

    .prologue
    .line 44058
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

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
    .line 44033
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

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
    .line 44033
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44098
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 44099
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 44104
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44106
    :pswitch_d
    return-object p0

    .line 44099
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 44085
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 44086
    :cond_6
    return-object p0
.end method
