.class public final Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field private userGaiaId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43195
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43330
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 43196
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 43197
    return-void
.end method

.method static synthetic access$60100()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 43190
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 43202
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43200
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
    .registers 3

    .prologue
    .line 43223
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v0

    .line 43224
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43225
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43227
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
    .registers 6

    .prologue
    .line 43241
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 43242
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43243
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43244
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43245
    or-int/lit8 v2, v2, 0x1

    .line 43247
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->userGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->userGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->access$60302(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;J)J

    .line 43248
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 43249
    or-int/lit8 v2, v2, 0x2

    .line 43251
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->access$60402(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 43252
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->access$60502(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;I)I

    .line 43253
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 43206
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->userGaiaId_:J

    .line 43208
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43209
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 43210
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43211
    return-object p0
.end method

.method public clearChannelToEnable()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 43347
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43348
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 43350
    return-object p0
.end method

.method public clearUserGaiaId()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43323
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->userGaiaId_:J

    .line 43326
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 43215
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

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
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannelToEnable()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2

    .prologue
    .line 43335
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;
    .registers 2

    .prologue
    .line 43219
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43314
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->userGaiaId_:J

    return-wide v0
.end method

.method public hasChannelToEnable()Z
    .registers 3

    .prologue
    .line 43332
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

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

.method public hasUserGaiaId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 43311
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

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
    .line 43190
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

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
    .line 43190
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43276
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 43277
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 43282
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43284
    :sswitch_d
    return-object p0

    .line 43289
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43290
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->userGaiaId_:J

    goto :goto_0

    .line 43294
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 43295
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    move-result-object v2

    .line 43296
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    if-eqz v2, :cond_0

    .line 43297
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43298
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    goto :goto_0

    .line 43277
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 43257
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43264
    :cond_6
    :goto_6
    return-object p0

    .line 43258
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->hasUserGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43259
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->getUserGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    .line 43261
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->hasChannelToEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43262
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest;->getChannelToEnable()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->setChannelToEnable(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;

    goto :goto_6
.end method

.method public setChannelToEnable(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43338
    if-nez p1, :cond_8

    .line 43339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43341
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43342
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->channelToEnable_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 43344
    return-object p0
.end method

.method public setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43317
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->bitField0_:I

    .line 43318
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsRequest$Builder;->userGaiaId_:J

    .line 43320
    return-object p0
.end method
