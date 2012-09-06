.class public final Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;",
        "Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;",
        ">;",
        "Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 436
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->maybeForceBuilderInitialization()V

    .line 437
    return-void
.end method

.method static synthetic access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 1

    .prologue
    .line 430
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 470
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 473
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 1

    .prologue
    .line 442
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 440
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 461
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 463
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3

    .prologue
    .line 477
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;-><init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V

    .line 478
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 1

    .prologue
    .line 446
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 447
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 3

    .prologue
    .line 451
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

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
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2

    .prologue
    .line 455
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 482
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 483
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 496
    packed-switch v0, :pswitch_data_e

    .line 501
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    :pswitch_d
    return-object p0

    .line 496
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
    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 430
    check-cast p1, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

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
    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method
