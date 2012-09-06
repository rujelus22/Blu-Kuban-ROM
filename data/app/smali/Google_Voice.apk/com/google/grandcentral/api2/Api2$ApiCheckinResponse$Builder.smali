.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckinResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckinResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40154
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40239
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40155
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->maybeForceBuilderInitialization()V

    .line 40156
    return-void
.end method

.method static synthetic access$48400()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 1

    .prologue
    .line 40149
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 1

    .prologue
    .line 40161
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40159
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 3

    .prologue
    .line 40180
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    .line 40181
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40182
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40184
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 6

    .prologue
    .line 40188
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 40189
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    .line 40190
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40191
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40192
    or-int/lit8 v2, v2, 0x1

    .line 40194
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->access$48602(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40195
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->access$48702(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;I)I

    .line 40196
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 2

    .prologue
    .line 40165
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40166
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40167
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    .line 40168
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 2

    .prologue
    .line 40275
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40277
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    .line 40278
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 3

    .prologue
    .line 40172
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

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
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 2

    .prologue
    .line 40176
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40149
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 40244
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40241
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

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

    .line 40208
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 40216
    :cond_7
    :goto_7
    return v0

    .line 40212
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40216
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 40200
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40204
    :cond_6
    :goto_6
    return-object p0

    .line 40201
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40202
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40223
    const/4 v2, 0x0

    .line 40225
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 40230
    if-eqz v2, :cond_10

    .line 40231
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    .line 40234
    :cond_10
    return-object p0

    .line 40226
    :catch_11
    move-exception v1

    .line 40227
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    move-object v2, v0

    .line 40228
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 40230
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 40231
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

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
    .line 40149
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40149
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

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
    .line 40149
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40263
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 40265
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40271
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    .line 40272
    return-object p0

    .line 40268
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 40257
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40259
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    .line 40260
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40247
    if-nez p1, :cond_8

    .line 40248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40250
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40252
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->bitField0_:I

    .line 40253
    return-object p0
.end method
