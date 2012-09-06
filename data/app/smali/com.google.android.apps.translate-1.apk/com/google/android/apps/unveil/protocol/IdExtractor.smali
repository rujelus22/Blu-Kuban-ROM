.class public Lcom/google/android/apps/unveil/protocol/IdExtractor;
.super Ljava/lang/Object;
.source "IdExtractor.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/IdExtractor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractMomentId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;
    .registers 5
    .parameter "gogglesResponse"

    .prologue
    .line 19
    sget-object v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 20
    sget-object v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    invoke-virtual {v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getMomentId()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_14
    return-object v0

    .line 24
    :cond_15
    sget-object v1, Lcom/google/android/apps/unveil/protocol/IdExtractor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to extract a moment ID because the extended goggles response is missing."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static extractMomentId(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Ljava/lang/String;
    .registers 2
    .parameter "replayResponse"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/IdExtractor;->extractMomentId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractTrackingId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;
    .registers 5
    .parameter "gogglesResponse"

    .prologue
    .line 33
    sget-object v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 34
    sget-object v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    invoke-virtual {v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_14
    return-object v0

    .line 38
    :cond_15
    sget-object v1, Lcom/google/android/apps/unveil/protocol/IdExtractor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to extract a tracking ID because the extended goggles response is missing."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static extractTrackingId(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Ljava/lang/String;
    .registers 2
    .parameter "replayResponse"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/IdExtractor;->extractTrackingId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
