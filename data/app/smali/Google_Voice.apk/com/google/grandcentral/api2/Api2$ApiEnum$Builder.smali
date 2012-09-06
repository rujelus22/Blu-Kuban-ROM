.class public final Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiEnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiEnum;",
        "Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiEnumOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 221
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->maybeForceBuilderInitialization()V

    .line 222
    return-void
.end method

.method static synthetic access$100()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;
    .registers 1

    .prologue
    .line 215
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;
    .registers 1

    .prologue
    .line 227
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 225
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiEnum;
    .registers 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v0

    .line 245
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiEnum;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiEnum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 246
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 248
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEnum;
    .registers 3

    .prologue
    .line 252
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEnum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/grandcentral/api2/Api2$ApiEnum;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 253
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiEnum;
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;
    .registers 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 232
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;
    .registers 3

    .prologue
    .line 236
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEnum;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

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
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEnum;
    .registers 2

    .prologue
    .line 240
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEnum;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEnum;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 257
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEnum;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 258
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiEnum;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiEnum;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 276
    if-eqz v2, :cond_10

    .line 277
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEnum;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    .line 280
    :cond_10
    return-object p0

    .line 272
    :catch_11
    move-exception v1

    .line 273
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEnum;

    move-object v2, v0

    .line 274
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 276
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 277
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEnum;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

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
    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 215
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiEnum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEnum;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

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
    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEnum$Builder;

    move-result-object v0

    return-object v0
.end method
