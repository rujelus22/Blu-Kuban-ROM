.class public interface abstract Lcom/google/android/apps/books/render/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canProvideText()Z
.end method

.method public abstract cancelPendingRequests()V
.end method

.method public abstract isPassageForbidden(I)Z
.end method

.method public abstract loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I
.end method

.method public abstract paintHighlightRectangles(IILandroid/graphics/Bitmap;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestPassageText(ILjava/lang/String;)I
.end method

.method public abstract requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;)V"
        }
    .end annotation
.end method
