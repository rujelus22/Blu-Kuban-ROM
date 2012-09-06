.class Lcom/google/android/opengl/carousel/CarouselView$3;
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


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$3;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$3;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->cancelHover()V

    .line 331
    return-void
.end method
