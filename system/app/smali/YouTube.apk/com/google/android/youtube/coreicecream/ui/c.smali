.class final Lcom/google/android/youtube/coreicecream/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/c;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/c;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->layout(IIII)V

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/c;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Z)Z

    .line 398
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/c;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    .line 399
    return-void
.end method
