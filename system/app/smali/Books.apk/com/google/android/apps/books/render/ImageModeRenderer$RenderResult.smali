.class Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;
.super Ljava/lang/Object;
.source "ImageModeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/ImageModeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final cookie:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final error:Ljava/lang/Exception;

.field position:Lcom/google/android/apps/books/render/RenderPosition;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    .registers 10
    .parameter "position"
    .parameter
    .parameter "bitmap"
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;,"Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string v2, "missing position"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/render/RenderPosition;

    iput-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    .line 184
    const-string v2, "missing cookie"

    invoke-static {p2, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    .line 185
    iput-object p3, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 186
    iput-object p4, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->error:Ljava/lang/Exception;

    .line 189
    if-eqz p3, :cond_2a

    move v0, v3

    .line 190
    .local v0, hasBitmap:Z
    :goto_1e
    if-eqz p4, :cond_2c

    move v1, v3

    .line 191
    .local v1, hasError:Z
    :goto_21
    if-eq v0, v1, :cond_2e

    move v2, v3

    :goto_24
    const-string v3, "must specify exactly one of bitmap or error"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 193
    return-void

    .end local v0           #hasBitmap:Z
    .end local v1           #hasError:Z
    :cond_2a
    move v0, v4

    .line 189
    goto :goto_1e

    .restart local v0       #hasBitmap:Z
    :cond_2c
    move v1, v4

    .line 190
    goto :goto_21

    .restart local v1       #hasError:Z
    :cond_2e
    move v2, v4

    .line 191
    goto :goto_24
.end method
