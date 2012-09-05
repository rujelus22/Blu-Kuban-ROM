.class public interface abstract Lcom/google/android/apps/books/tts/Segmentation;
.super Ljava/lang/Object;
.source "Segmentation.java"


# virtual methods
.method public abstract getItemCount()I
.end method

.method public abstract getItemRange(I)Lcom/google/android/apps/books/util/Range;
.end method

.method public abstract getItemText(I)Ljava/lang/String;
.end method

.method public abstract getNearestItemIndex(I)I
.end method

.method public abstract getNearestItemIndex(Lcom/google/android/apps/books/common/Position;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/common/Position;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
