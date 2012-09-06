.class Lcom/google/android/opengl/carousel/CarouselView$18;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->setDefaultEyeLookAt([F[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$at:[F

.field final synthetic val$eye:[F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;[F[F)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$18;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselView$18;->val$eye:[F

    iput-object p3, p0, Lcom/google/android/opengl/carousel/CarouselView$18;->val$at:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$18;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$18;->val$eye:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$18;->val$at:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLCamera;->setDefaultEyeLookAt([F[F)Z

    .line 1318
    return-void
.end method
