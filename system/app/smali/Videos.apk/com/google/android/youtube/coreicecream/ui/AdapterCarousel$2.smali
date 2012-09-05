.class Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$2;
.super Ljava/lang/Object;
.source "AdapterCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 2
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->layout(IIII)V

    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detached:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$102(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Z)Z

    .line 394
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #calls: Lcom/android/ex/carousel/CarouselView;->onDetachedFromWindow()V
    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$201(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    .line 395
    return-void
.end method
