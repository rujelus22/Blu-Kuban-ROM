.class public final Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Constants.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Constants$AccountConstantsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$AccountConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Constants$AccountConstants;",
        "Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Constants$AccountConstantsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1176
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->maybeForceBuilderInitialization()V

    .line 1177
    return-void
.end method

.method static synthetic access$1000()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 1

    .prologue
    .line 1170
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->create()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 1

    .prologue
    .line 1182
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1180
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 3

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->buildPartial()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v0

    .line 1200
    .local v0, result:Lcom/google/grandcentral/api2/Constants$AccountConstants;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1201
    invoke-static {v0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1203
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->build()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 3

    .prologue
    .line 1207
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/grandcentral/api2/Constants$AccountConstants;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Constants$1;)V

    .line 1208
    .local v0, result:Lcom/google/grandcentral/api2/Constants$AccountConstants;
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->buildPartial()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 1

    .prologue
    .line 1186
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1187
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->clear()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->clear()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 3

    .prologue
    .line 1191
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->create()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->buildPartial()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

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
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 2

    .prologue
    .line 1195
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->getDefaultInstance()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1217
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1212
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->getDefaultInstance()Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1213
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    const/4 v2, 0x0

    .line 1226
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Constants$AccountConstants;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 1231
    if-eqz v2, :cond_10

    .line 1232
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    .line 1235
    :cond_10
    return-object p0

    .line 1227
    :catch_11
    move-exception v1

    .line 1228
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    move-object v2, v0

    .line 1229
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 1231
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 1232
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

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
    .line 1170
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1170
    check-cast p1, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

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
    .line 1170
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method
