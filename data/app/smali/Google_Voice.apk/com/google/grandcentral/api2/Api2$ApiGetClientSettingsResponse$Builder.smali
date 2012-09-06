.class public final Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientSettings_:Lcom/google/protobuf/ByteString;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34994
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35088
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35131
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 34995
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 34996
    return-void
.end method

.method static synthetic access$41800()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 34989
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 35001
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34999
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 3

    .prologue
    .line 35022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    .line 35023
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35024
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35026
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 6

    .prologue
    .line 35030
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 35031
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35032
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35033
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 35034
    or-int/lit8 v2, v2, 0x1

    .line 35036
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->access$42002(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35037
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 35038
    or-int/lit8 v2, v2, 0x2

    .line 35040
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->clientSettings_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->access$42102(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 35041
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->access$42202(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;I)I

    .line 35042
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 35005
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35006
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35007
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35008
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35009
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35010
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientSettings()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 35148
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35149
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getClientSettings()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35151
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 35124
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35126
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35127
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 3

    .prologue
    .line 35014
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

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
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientSettings()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 35136
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 2

    .prologue
    .line 35018
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34989
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 35093
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasClientSettings()Z
    .registers 3

    .prologue
    .line 35133
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

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

    .line 35090
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

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

    .line 35057
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 35065
    :cond_7
    :goto_7
    return v0

    .line 35061
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35065
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 35046
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35053
    :cond_6
    :goto_6
    return-object p0

    .line 35047
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35048
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    .line 35050
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->hasClientSettings()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35051
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getClientSettings()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->setClientSettings(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35072
    const/4 v2, 0x0

    .line 35074
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 35079
    if-eqz v2, :cond_10

    .line 35080
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    .line 35083
    :cond_10
    return-object p0

    .line 35075
    :catch_11
    move-exception v1

    .line 35076
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    move-object v2, v0

    .line 35077
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 35079
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 35080
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

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
    .line 34989
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34989
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

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
    .line 34989
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35112
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 35114
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35120
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35121
    return-object p0

    .line 35117
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setClientSettings(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35139
    if-nez p1, :cond_8

    .line 35140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35142
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35143
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35145
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 35106
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35108
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35109
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35096
    if-nez p1, :cond_8

    .line 35097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35099
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 35101
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->bitField0_:I

    .line 35102
    return-object p0
.end method
