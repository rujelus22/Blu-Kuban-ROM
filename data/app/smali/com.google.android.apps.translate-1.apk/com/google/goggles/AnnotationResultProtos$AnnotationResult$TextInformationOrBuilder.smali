.class public interface abstract Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformationOrBuilder;
.super Ljava/lang/Object;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextInformationOrBuilder"
.end annotation


# virtual methods
.method public abstract getTranslatedTitle()Ljava/lang/String;
.end method

.method public abstract getWords(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
.end method

.method public abstract getWordsCount()I
.end method

.method public abstract getWordsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasTranslatedTitle()Z
.end method
