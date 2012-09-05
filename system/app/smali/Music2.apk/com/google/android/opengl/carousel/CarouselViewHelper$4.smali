.class Lcom/google/android/opengl/carousel/CarouselViewHelper$4;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/opengl/common/Pool$Allocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;->createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/opengl/common/Pool$Allocator",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

.field final synthetic val$config:Landroid/graphics/Bitmap$Config;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;IILandroid/graphics/Bitmap$Config;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$width:I

    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$height:I

    iput-object p4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$config:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$width:I

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$height:I

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$config:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 438
    :goto_b
    return-object v0

    .line 435
    :catch_c
    move-exception v1

    .line 436
    .local v1, e:Ljava/lang/OutOfMemoryError;
    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$width:I

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->val$height:I

    invoke-static {v1, v2, v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_b
.end method

.method public bridge synthetic allocate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->allocate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public destroy(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    return-void
.end method

.method public bridge synthetic destroy(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 429
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper$4;->destroy(Landroid/graphics/Bitmap;)V

    return-void
.end method
