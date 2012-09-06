.class public interface abstract Lcom/google/goggles/GogglesProtos$ImageDataOrBuilder;
.super Ljava/lang/Object;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getCropRegion()Lcom/google/goggles/GogglesProtos$CropRegion;
.end method

.method public abstract getEncodedImage()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getImageEncoding()Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
.end method

.method public abstract getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getOffsetAlreadyApplied()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getQuality()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasCropRegion()Z
.end method

.method public abstract hasEncodedImage()Z
.end method

.method public abstract hasHeight()Z
.end method

.method public abstract hasImageEncoding()Z
.end method

.method public abstract hasImageOffsetFromRightSideUp()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasOffsetAlreadyApplied()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasQuality()Z
.end method

.method public abstract hasWidth()Z
.end method
