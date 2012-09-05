.class public Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;
.super Lcom/google/android/youtube/videos/honeycomb/LocalVideosController;
.source "LocalVideosControllerImpl.java"


# instance fields
.field private gridView:Landroid/widget/GridView;


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

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;->gridView:Landroid/widget/GridView;

    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    return-void
.end method

.method public onOrientationChanged(Z)V
    .registers 5
    .parameter "landscape"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/phone/LocalVideosControllerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 41
    return-void
.end method
