.class public Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;
.super Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;
.source "LocalVideosControllerImpl.java"


# instance fields
.field private carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 5
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0d0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setAdapter(Landroid/widget/Adapter;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->destroy()V

    .line 53
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->onStart()V

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->resume()V

    .line 42
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/LocalVideosControllerImpl;->carousel:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->pause()V

    .line 47
    invoke-super {p0}, Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;->onStop()V

    .line 48
    return-void
.end method
