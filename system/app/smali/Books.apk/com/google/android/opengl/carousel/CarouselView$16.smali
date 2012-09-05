.class Lcom/google/android/opengl/carousel/CarouselView$16;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$angle:F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;F)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$angle:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselView$16;->val$angle:F

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->setCarouselRotationAngle(F)V

    .line 1103
    return-void
.end method
