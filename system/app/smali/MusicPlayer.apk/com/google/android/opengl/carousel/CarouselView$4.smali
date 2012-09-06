.class Lcom/google/android/opengl/carousel/CarouselView$4;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->rotateCarousel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$toColumn:I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$toColumn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$200(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollTime:I

    if-nez v0, :cond_17

    .line 562
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$toColumn:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->setCarouselRotationAngle(F)V

    .line 570
    :goto_16
    return-void

    .line 564
    :cond_17
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$toColumn:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v2}, Lcom/google/android/opengl/carousel/CarouselView;->access$200(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v2

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollTime:I

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v3}, Lcom/google/android/opengl/carousel/CarouselView;->access$200(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v3

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollInterpolationMode:I

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v4}, Lcom/google/android/opengl/carousel/CarouselView;->access$200(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v4

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollMaxArc:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/CarouselScene;->setCarouselRotationAngle(FIIF)V

    goto :goto_16
.end method
