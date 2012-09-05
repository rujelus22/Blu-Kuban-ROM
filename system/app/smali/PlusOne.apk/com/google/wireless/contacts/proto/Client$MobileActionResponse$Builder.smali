.class public final Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;",
        "Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileActionResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7258
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    .line 7159
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 7160
    return-void
.end method

.method static synthetic access$9100(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7153
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 1

    .prologue
    .line 7153
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7193
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    .line 7194
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 7195
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 7198
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 1

    .prologue
    .line 7165
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7163
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 3

    .prologue
    .line 7184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    .line 7185
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7186
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7188
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 6

    .prologue
    .line 7202
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 7203
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    .line 7204
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7205
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7206
    or-int/lit8 v2, v2, 0x1

    .line 7208
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->access$9402(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    .line 7209
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->access$9502(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;I)I

    .line 7210
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 2

    .prologue
    .line 7169
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7170
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    .line 7171
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    .line 7172
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 2

    .prologue
    .line 7275
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    .line 7276
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    .line 7278
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 3

    .prologue
    .line 7176
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

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
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7153
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 2

    .prologue
    .line 7180
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;
    .registers 2

    .prologue
    .line 7263
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    return-object v0
.end method

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7260
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 7153
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

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
    .line 7153
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7230
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7231
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 7236
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7238
    :sswitch_d
    return-object p0

    .line 7243
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7244
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    move-result-object v2

    .line 7245
    .local v2, value:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;
    if-eqz v2, :cond_0

    .line 7246
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    .line 7247
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    goto :goto_0

    .line 7231
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 7214
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7218
    :cond_6
    :goto_6
    return-object p0

    .line 7215
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7216
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->setResponseCode(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    goto :goto_6
.end method

.method public setResponseCode(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7266
    if-nez p1, :cond_8

    .line 7267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7269
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->bitField0_:I

    .line 7270
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    .line 7272
    return-object p0
.end method
