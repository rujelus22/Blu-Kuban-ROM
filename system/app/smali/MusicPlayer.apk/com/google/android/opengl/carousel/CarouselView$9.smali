.class Lcom/google/android/opengl/carousel/CarouselView$9;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$loffx:F

.field final synthetic val$loffy:F

.field final synthetic val$n:I

.field final synthetic val$offx:F

.field final synthetic val$offy:F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;IFFFFLandroid/graphics/Bitmap;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$n:I

    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$offx:F

    iput p4, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$offy:F

    iput p5, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$loffx:F

    iput p6, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$loffy:F

    iput-object p7, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$n:I

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$offx:F

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$offy:F

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$loffx:F

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$loffy:F

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselView$9;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/opengl/carousel/CarouselScene;->setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V

    .line 890
    return-void
.end method
