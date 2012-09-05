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
