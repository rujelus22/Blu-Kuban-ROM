.class public final Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7040
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7125
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 7041
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->maybeForceBuilderInitialization()V

    .line 7042
    return-void
.end method

.method static synthetic access$7900()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 1

    .prologue
    .line 7035
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 1

    .prologue
    .line 7047
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7045
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 3

    .prologue
    .line 7066
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    .line 7067
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7068
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7070
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 6

    .prologue
    .line 7074
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 7075
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    .line 7076
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7077
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7078
    or-int/lit8 v2, v2, 0x1

    .line 7080
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->access$8102(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 7081
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->access$8202(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;I)I

    .line 7082
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 2

    .prologue
    .line 7051
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7052
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 7053
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    .line 7054
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 2

    .prologue
    .line 7161
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 7163
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    .line 7164
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 3

    .prologue
    .line 7058
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

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
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 2

    .prologue
    .line 7062
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7035
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 7130
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7127
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

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

    .line 7094
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 7102
    :cond_7
    :goto_7
    return v0

    .line 7098
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7102
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 7086
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7090
    :cond_6
    :goto_6
    return-object p0

    .line 7087
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7088
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7109
    const/4 v2, 0x0

    .line 7111
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 7116
    if-eqz v2, :cond_10

    .line 7117
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    .line 7120
    :cond_10
    return-object p0

    .line 7112
    :catch_11
    move-exception v1

    .line 7113
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-object v2, v0

    .line 7114
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 7116
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 7117
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

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
    .line 7035
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7035
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

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
    .line 7035
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7149
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 7151
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 7157
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    .line 7158
    return-object p0

    .line 7154
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 7143
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 7145
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    .line 7146
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7133
    if-nez p1, :cond_8

    .line 7134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7136
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 7138
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->bitField0_:I

    .line 7139
    return-object p0
.end method
