.class public final Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39194
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39110
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 39111
    return-void
.end method

.method static synthetic access$47100()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 1

    .prologue
    .line 39104
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 1

    .prologue
    .line 39116
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39114
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;
    .registers 3

    .prologue
    .line 39135
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v0

    .line 39136
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39137
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 39139
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;
    .registers 6

    .prologue
    .line 39143
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 39144
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    .line 39145
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39146
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 39147
    or-int/lit8 v2, v2, 0x1

    .line 39149
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->access$47302(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39150
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->access$47402(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;I)I

    .line 39151
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 2

    .prologue
    .line 39120
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39121
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39122
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    .line 39123
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 2

    .prologue
    .line 39230
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39232
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    .line 39233
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 3

    .prologue
    .line 39127
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

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
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;
    .registers 2

    .prologue
    .line 39131
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39104
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 39199
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39196
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

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

    .line 39163
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 39171
    :cond_7
    :goto_7
    return v0

    .line 39167
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39171
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 39155
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39159
    :cond_6
    :goto_6
    return-object p0

    .line 39156
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39157
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39178
    const/4 v2, 0x0

    .line 39180
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 39185
    if-eqz v2, :cond_10

    .line 39186
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    .line 39189
    :cond_10
    return-object p0

    .line 39181
    :catch_11
    move-exception v1

    .line 39182
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    move-object v2, v0

    .line 39183
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 39185
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 39186
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

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
    .line 39104
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39104
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

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
    .line 39104
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 39218
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 39220
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39226
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    .line 39227
    return-object p0

    .line 39223
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 39212
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39214
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    .line 39215
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39202
    if-nez p1, :cond_8

    .line 39203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39205
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39207
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationResponse$Builder;->bitField0_:I

    .line 39208
    return-object p0
.end method
