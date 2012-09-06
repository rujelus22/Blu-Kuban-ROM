.class Lcom/google/android/opengl/carousel/CarouselView$10;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$10;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselView$10;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 922
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$10;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$200(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$10;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 923
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$10;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    if-lez v0, :cond_33

    .line 924
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$10;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 925
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$10;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 927
    :cond_33
    return-void
.end method
