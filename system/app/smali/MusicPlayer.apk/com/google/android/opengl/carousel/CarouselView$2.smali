.class Lcom/google/android/opengl/carousel/CarouselView$2;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;FF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$x:F

    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v1}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$x:F

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->val$y:F

    invoke-virtual {v1, v2, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->doHover(FF)Z

    move-result v0

    .line 320
    .local v0, hoverOccur:Z
    if-eqz v0, :cond_15

    .line 321
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$2;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #calls: Lcom/google/android/opengl/carousel/CarouselView;->sendHoverEvent()V
    invoke-static {v1}, Lcom/google/android/opengl/carousel/CarouselView;->access$100(Lcom/google/android/opengl/carousel/CarouselView;)V

    .line 323
    :cond_15
    return-void
.end method
