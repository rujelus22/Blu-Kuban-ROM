.class public final Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettingsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13689
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13789
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13832
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13690
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 13691
    return-void
.end method

.method static synthetic access$16100()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 13684
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 13696
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13694
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 3

    .prologue
    .line 13717
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    .line 13718
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13719
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13721
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 6

    .prologue
    .line 13725
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 13726
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13727
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13728
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13729
    or-int/lit8 v2, v2, 0x1

    .line 13731
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->access$16302(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13732
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13733
    or-int/lit8 v2, v2, 0x2

    .line 13735
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->access$16402(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13736
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->access$16502(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;I)I

    .line 13737
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 13700
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13701
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13702
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13703
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13704
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13705
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSettings()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 13868
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13870
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13871
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 13825
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13827
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13828
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 3

    .prologue
    .line 13709
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

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
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 2

    .prologue
    .line 13713
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13684
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2

    .prologue
    .line 13837
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 13794
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasSettings()Z
    .registers 3

    .prologue
    .line 13834
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13791
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 13752
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 13766
    :cond_7
    :goto_7
    return v0

    .line 13756
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13760
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->hasSettings()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 13761
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13766
    :cond_22
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 13741
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13748
    :cond_6
    :goto_6
    return-object p0

    .line 13742
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13743
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    .line 13745
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->hasSettings()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13746
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13773
    const/4 v2, 0x0

    .line 13775
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 13780
    if-eqz v2, :cond_10

    .line 13781
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    .line 13784
    :cond_10
    return-object p0

    .line 13776
    :catch_11
    move-exception v1

    .line 13777
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    move-object v2, v0

    .line 13778
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 13780
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 13781
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    :cond_21
    throw v3
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
    .line 13684
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 13684
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

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
    .line 13684
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13856
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 13858
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13864
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13865
    return-object p0

    .line 13861
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    goto :goto_1f
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13813
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 13815
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13821
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13822
    return-object p0

    .line 13818
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13850
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13852
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13853
    return-object p0
.end method

.method public setSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13840
    if-nez p1, :cond_8

    .line 13841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13843
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13845
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13846
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13807
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13809
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13810
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13797
    if-nez p1, :cond_8

    .line 13798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13800
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13802
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->bitField0_:I

    .line 13803
    return-object p0
.end method
