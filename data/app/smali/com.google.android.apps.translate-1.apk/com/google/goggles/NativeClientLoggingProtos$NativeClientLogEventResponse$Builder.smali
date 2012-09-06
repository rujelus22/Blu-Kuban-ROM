.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;",
        ">;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2685
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->maybeForceBuilderInitialization()V

    .line 2686
    return-void
.end method

.method static synthetic access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2679
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 1

    .prologue
    .line 2679
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2717
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    .line 2718
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2719
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2722
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 1

    .prologue
    .line 2691
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2689
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3

    .prologue
    .line 2708
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    .line 2709
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2710
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2712
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3

    .prologue
    .line 2726
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V

    .line 2727
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 1

    .prologue
    .line 2695
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2696
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 3

    .prologue
    .line 2700
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

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
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 2

    .prologue
    .line 2704
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2736
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2731
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 2732
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2744
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2745
    packed-switch v0, :pswitch_data_e

    .line 2750
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2752
    :pswitch_d
    return-object p0

    .line 2745
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
    .line 2679
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2679
    check-cast p1, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

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
    .line 2679
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method
