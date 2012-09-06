.class public final Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PresenceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7172
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7272
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 7173
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 7174
    return-void
.end method

.method static synthetic access$9300()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 1

    .prologue
    .line 7167
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 1

    .prologue
    .line 7179
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7177
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 3

    .prologue
    .line 7198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    .line 7199
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7200
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7202
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 6

    .prologue
    .line 7216
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 7217
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    .line 7218
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7219
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7220
    or-int/lit8 v2, v2, 0x1

    .line 7222
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->access$9502(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 7223
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->access$9602(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;I)I

    .line 7224
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 2

    .prologue
    .line 7183
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7184
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 7185
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    .line 7186
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 2

    .prologue
    .line 7289
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    .line 7290
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 7292
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 3

    .prologue
    .line 7190
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

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
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7167
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 7194
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 7277
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7274
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 7236
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
    .line 7167
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7167
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

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
    .line 7167
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7245
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 7250
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7252
    :sswitch_d
    return-object p0

    .line 7257
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7258
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 7259
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 7260
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    .line 7261
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 7245
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 7228
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7232
    :cond_6
    :goto_6
    return-object p0

    .line 7229
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7230
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7280
    if-nez p1, :cond_8

    .line 7281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7283
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->bitField0_:I

    .line 7284
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 7286
    return-object p0
.end method
