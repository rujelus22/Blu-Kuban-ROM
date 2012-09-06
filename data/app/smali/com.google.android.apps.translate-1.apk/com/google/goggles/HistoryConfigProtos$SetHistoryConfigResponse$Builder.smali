.class public final Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;",
        "Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;",
        ">;",
        "Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1307
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1308
    return-void
.end method

.method static synthetic access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 1

    .prologue
    .line 1301
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1341
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1344
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 1

    .prologue
    .line 1313
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1311
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1332
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1334
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3

    .prologue
    .line 1348
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;-><init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V

    .line 1349
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 1

    .prologue
    .line 1317
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1318
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 3

    .prologue
    .line 1322
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

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
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2

    .prologue
    .line 1326
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1358
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1353
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1354
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1366
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1367
    packed-switch v0, :pswitch_data_e

    .line 1372
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    :pswitch_d
    return-object p0

    .line 1367
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1301
    check-cast p1, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method
