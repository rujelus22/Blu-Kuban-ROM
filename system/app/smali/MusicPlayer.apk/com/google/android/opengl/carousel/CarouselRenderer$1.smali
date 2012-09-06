.class Lcom/google/android/opengl/carousel/CarouselRenderer$1;
.super Ljava/lang/Object;
.source "CarouselRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselRenderer;->hideCoverView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field final synthetic val$cover:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer$1;->this$0:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer$1;->val$cover:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer$1;->val$cover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void
.end method
