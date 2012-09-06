.class public interface abstract Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;
.super Ljava/lang/Object;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WordOrBuilder"
.end annotation


# virtual methods
.method public abstract getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
.end method

.method public abstract getCharacterBoxes(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
.end method

.method public abstract getCharacterBoxesCount()I
.end method

.method public abstract getCharacterBoxesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/BoundingBoxProtos$BoundingBox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract hasBox()Z
.end method

.method public abstract hasText()Z
.end method
