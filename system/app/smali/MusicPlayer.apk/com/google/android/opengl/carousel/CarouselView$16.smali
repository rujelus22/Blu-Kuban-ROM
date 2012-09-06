.class Lcom/google/android/opengl/carousel/CarouselView$16;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(FIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$endAngle:F

.field final synthetic val$interpolationMode:I

.field final synthetic val$maxAnimatedArc:F

.field final synthetic val$milliseconds:I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;FIIF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$endAngle:F

    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$milliseconds:I

    iput p4, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$interpolationMode:I

    iput p5, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$maxAnimatedArc:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$endAngle:F

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$milliseconds:I

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$interpolationMode:I

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$maxAnimatedArc:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/CarouselScene;->setCarouselRotationAngle(FIIF)V

    .line 1203
    return-void
.end method
