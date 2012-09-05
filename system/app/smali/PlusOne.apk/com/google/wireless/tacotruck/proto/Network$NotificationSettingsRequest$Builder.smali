.class public final Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field private notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

.field private userGaiaId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41424
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41577
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41620
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 41425
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 41426
    return-void
.end method

.method static synthetic access$57400()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 41419
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 41431
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41429
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
    .registers 3

    .prologue
    .line 41454
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v0

    .line 41455
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41456
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41458
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
    .registers 6

    .prologue
    .line 41472
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 41473
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41474
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41475
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41476
    or-int/lit8 v2, v2, 0x1

    .line 41478
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->userGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->userGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->access$57602(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;J)J

    .line 41479
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41480
    or-int/lit8 v2, v2, 0x2

    .line 41482
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->access$57702(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41483
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 41484
    or-int/lit8 v2, v2, 0x4

    .line 41486
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->access$57802(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 41487
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->access$57902(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;I)I

    .line 41488
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 41435
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41436
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->userGaiaId_:J

    .line 41437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41438
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41439
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41440
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 41441
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41442
    return-object p0
.end method

.method public clearChannel()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 41637
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41638
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 41640
    return-object p0
.end method

.method public clearNotificationSettings()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 41613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41615
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41616
    return-object p0
.end method

.method public clearUserGaiaId()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41571
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->userGaiaId_:J

    .line 41573
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 41446
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

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
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2

    .prologue
    .line 41625
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;
    .registers 2

    .prologue
    .line 41450
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 41582
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41561
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->userGaiaId_:J

    return-wide v0
.end method

.method public hasChannel()Z
    .registers 3

    .prologue
    .line 41622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasNotificationSettings()Z
    .registers 3

    .prologue
    .line 41579
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

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

    .line 41558
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

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
    .line 41419
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

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
    .line 41419
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 41515
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 41520
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41522
    :sswitch_d
    return-object p0

    .line 41527
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41528
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->userGaiaId_:J

    goto :goto_0

    .line 41532
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v1

    .line 41533
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->hasNotificationSettings()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 41534
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    .line 41536
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 41537
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    goto :goto_0

    .line 41541
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    :sswitch_37
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41542
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    move-result-object v3

    .line 41543
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    if-eqz v3, :cond_0

    .line 41544
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41545
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    goto :goto_0

    .line 41515
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 41492
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41502
    :cond_6
    :goto_6
    return-object p0

    .line 41493
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->hasUserGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41494
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->getUserGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    .line 41496
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->hasNotificationSettings()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 41497
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->mergeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    .line 41499
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41500
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest;->getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->setChannel(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;

    goto :goto_6
.end method

.method public mergeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41601
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 41603
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41609
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41610
    return-object p0

    .line 41606
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    goto :goto_1f
.end method

.method public setChannel(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41628
    if-nez p1, :cond_8

    .line 41629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41631
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41632
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->channel_:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 41634
    return-object p0
.end method

.method public setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 41595
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41597
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41598
    return-object p0
.end method

.method public setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41585
    if-nez p1, :cond_8

    .line 41586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41588
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 41590
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41591
    return-object p0
.end method

.method public setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->bitField0_:I

    .line 41565
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequest$Builder;->userGaiaId_:J

    .line 41567
    return-object p0
.end method
