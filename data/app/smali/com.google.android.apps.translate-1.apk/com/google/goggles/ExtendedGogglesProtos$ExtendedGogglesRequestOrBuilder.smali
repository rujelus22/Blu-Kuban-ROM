.class public interface abstract Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequestOrBuilder;
.super Ljava/lang/Object;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedGogglesRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientAnnotations(I)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
.end method

.method public abstract getClientAnnotationsCount()I
.end method

.method public abstract getClientAnnotationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeprecatedField1()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
.end method

.method public abstract getEncryptedLatLng()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMsSinceEpoch()J
.end method

.method public abstract getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getReturnResults()Z
.end method

.method public abstract getSequenceNumber()I
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSourceLanguage()Ljava/lang/String;
.end method

.method public abstract getTrackedResults(I)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
.end method

.method public abstract getTrackedResultsCount()I
.end method

.method public abstract getTrackedResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDeprecatedField1()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasDeviceInfo()Z
.end method

.method public abstract hasEncryptedLatLng()Z
.end method

.method public abstract hasMsSinceEpoch()Z
.end method

.method public abstract hasNetworkInfo()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasReturnResults()Z
.end method

.method public abstract hasSequenceNumber()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasSourceLanguage()Z
.end method
