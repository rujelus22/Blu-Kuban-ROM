.class public abstract Lcom/google/android/apps/unveil/network/ProtoBuilder;
.super Ljava/lang/Object;
.source "ProtoBuilder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Class;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;
    .registers 5
    .parameter
    .parameter "inputStream"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/android/apps/unveil/network/ProtoBuilder;->builderForClass(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 32
    .local v0, builder:Lcom/google/protobuf/GeneratedMessageLite$Builder;,"Lcom/google/protobuf/GeneratedMessageLite$Builder<**>;"
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    return-object v1
.end method

.method private static builderForClass(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">;)",
            "Lcom/google/protobuf/GeneratedMessageLite$Builder",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageLite;>;"
    const-class v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;

    if-ne p0, v0, :cond_9

    .line 38
    invoke-static {}, Lcom/google/goggles/ContainerProtos$ContainerResponse;->newBuilder()Lcom/google/goggles/ContainerProtos$ContainerResponse$Builder;

    move-result-object v0

    .line 48
    :goto_8
    return-object v0

    .line 39
    :cond_9
    const-class v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    if-ne p0, v0, :cond_12

    .line 40
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    goto :goto_8

    .line 41
    :cond_12
    const-class v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    if-ne p0, v0, :cond_1b

    .line 42
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    goto :goto_8

    .line 43
    :cond_1b
    const-class v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    if-ne p0, v0, :cond_24

    .line 44
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    goto :goto_8

    .line 45
    :cond_24
    const-class v0, Lcom/google/goggles/TracingProtos$TraceResponse;

    if-ne p0, v0, :cond_2d

    .line 46
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    goto :goto_8

    .line 47
    :cond_2d
    const-class v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    if-ne p0, v0, :cond_36

    .line 48
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    goto :goto_8

    .line 51
    :cond_36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not yet supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
