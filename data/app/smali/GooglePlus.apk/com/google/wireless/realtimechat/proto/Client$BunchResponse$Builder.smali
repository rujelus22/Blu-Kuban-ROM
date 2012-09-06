.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 31290
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31177
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 31178
    return-void
.end method

.method static synthetic access$42800()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 1

    .prologue
    .line 31171
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 1

    .prologue
    .line 31183
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31181
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
    .registers 3

    .prologue
    .line 31204
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    .line 31205
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 31206
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 31208
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
    .registers 6

    .prologue
    .line 31222
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 31223
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31224
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 31225
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 31226
    or-int/lit8 v2, v2, 0x1

    .line 31228
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->access$43002(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31229
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 31230
    or-int/lit8 v2, v2, 0x2

    .line 31232
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->access$43102(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;J)J

    .line 31233
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->access$43202(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;I)I

    .line 31234
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 3

    .prologue
    .line 31187
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31188
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31189
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->timestamp_:J

    .line 31191
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31192
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 2

    .prologue
    .line 31307
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31308
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31310
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 3

    .prologue
    .line 31328
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->timestamp_:J

    .line 31331
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 3

    .prologue
    .line 31196
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

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
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31171
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;
    .registers 2

    .prologue
    .line 31200
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 31295
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 31319
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31292
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 31316
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 31249
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
    .line 31171
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 31171
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

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
    .line 31171
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 31258
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 31263
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31265
    :sswitch_d
    return-object p0

    .line 31270
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 31271
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 31272
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 31273
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31274
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 31279
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31280
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 31258
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 31238
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 31245
    :cond_6
    :goto_6
    return-object p0

    .line 31239
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31240
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    .line 31242
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31243
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31298
    if-nez p1, :cond_8

    .line 31299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31301
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31302
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 31304
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31322
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->bitField0_:I

    .line 31323
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchResponse$Builder;->timestamp_:J

    .line 31325
    return-object p0
.end method
