.class public interface abstract Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;
.super Ljava/lang/Object;
.source "UnderlinePositioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
    }
.end annotation


# virtual methods
.method public abstract getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
.end method

.method public abstract setWords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;)V"
        }
    .end annotation
.end method
