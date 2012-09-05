.class Lcom/google/android/opengl/carousel/CarouselView$22;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->shuffle([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$comeFrom:[I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$22;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselView$22;->val$comeFrom:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView$22;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView$22;->val$comeFrom:[I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->shuffle([I)V

    .line 1384
    return-void
.end method
