.class public interface abstract Lcom/google/goggles/GogglesProtos$ImageOrBuilder;
.super Ljava/lang/Object;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/goggles/GogglesProtos$Image;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDocid()Ljava/lang/String;
.end method

.method public abstract getImageData()Lcom/google/goggles/GogglesProtos$ImageData;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getRoi()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
.end method

.method public abstract hasDocid()Z
.end method

.method public abstract hasImageData()Z
.end method

.method public abstract hasImageUrl()Z
.end method

.method public abstract hasRoi()Z
.end method
