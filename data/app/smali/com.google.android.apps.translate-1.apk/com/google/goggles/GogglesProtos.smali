.class public final Lcom/google/goggles/GogglesProtos;
.super Ljava/lang/Object;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$1;,
        Lcom/google/goggles/GogglesProtos$GogglesResponse;,
        Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;,
        Lcom/google/goggles/GogglesProtos$GogglesRequest;,
        Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;,
        Lcom/google/goggles/GogglesProtos$Audio;,
        Lcom/google/goggles/GogglesProtos$AudioOrBuilder;,
        Lcom/google/goggles/GogglesProtos$ImageRotation;,
        Lcom/google/goggles/GogglesProtos$ImageRotationOrBuilder;,
        Lcom/google/goggles/GogglesProtos$Image;,
        Lcom/google/goggles/GogglesProtos$ImageOrBuilder;,
        Lcom/google/goggles/GogglesProtos$ImageData;,
        Lcom/google/goggles/GogglesProtos$ImageDataOrBuilder;,
        Lcom/google/goggles/GogglesProtos$CropRegion;,
        Lcom/google/goggles/GogglesProtos$CropRegionOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 4423
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 2
    .parameter

    .prologue
    .line 10
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageRotation:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 11
    return-void
.end method
