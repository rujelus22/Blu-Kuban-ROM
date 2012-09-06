.class public final Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42606
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42706
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42607
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 42608
    return-void
.end method

.method static synthetic access$58900(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42601
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$59000()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 42601
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    .line 42642
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 42643
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 42646
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 42613
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 42611
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 3

    .prologue
    .line 42632
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    .line 42633
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42634
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42636
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 6

    .prologue
    .line 42650
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 42651
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    .line 42652
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42653
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 42654
    or-int/lit8 v2, v2, 0x1

    .line 42656
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->access$59202(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42657
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->access$59302(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;I)I

    .line 42658
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 42617
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42618
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42619
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    .line 42620
    return-object p0
.end method

.method public clearNotificationSettings()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 42742
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    .line 42745
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 3

    .prologue
    .line 42624
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

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
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42601
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;
    .registers 2

    .prologue
    .line 42628
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 42711
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method public hasNotificationSettings()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42708
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

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
    .line 42670
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
    .line 42601
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42601
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

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
    .line 42601
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42678
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42679
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 42684
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42686
    :sswitch_d
    return-object p0

    .line 42691
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    .line 42692
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->hasNotificationSettings()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 42693
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    .line 42695
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 42696
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    goto :goto_0

    .line 42679
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 42662
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42666
    :cond_6
    :goto_6
    return-object p0

    .line 42663
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->hasNotificationSettings()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42664
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse;->getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->mergeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;

    goto :goto_6
.end method

.method public mergeNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 42730
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 42732
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42738
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    .line 42739
    return-object p0

    .line 42735
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    goto :goto_1f
.end method

.method public setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 42724
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42726
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    .line 42727
    return-object p0
.end method

.method public setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42714
    if-nez p1, :cond_8

    .line 42715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42717
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->notificationSettings_:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 42719
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsResponse$Builder;->bitField0_:I

    .line 42720
    return-object p0
.end method
