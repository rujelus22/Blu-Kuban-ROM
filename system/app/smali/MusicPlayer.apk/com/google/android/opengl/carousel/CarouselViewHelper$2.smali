.class final Lcom/google/android/opengl/carousel/CarouselViewHelper$2;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(ILandroid/graphics/Bitmap;)V
    .registers 3
    .parameter "type"
    .parameter "bitmap"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    return-void
.end method
