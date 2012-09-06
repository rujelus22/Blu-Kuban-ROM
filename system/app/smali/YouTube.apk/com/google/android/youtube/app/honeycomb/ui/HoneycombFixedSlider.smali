.class public Lcom/google/android/youtube/app/honeycomb/ui/HoneycombFixedSlider;
.super Lcom/google/android/youtube/app/ui/FixedSlider;
.source "SourceFile"


# virtual methods
.method public setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/FixedSlider;->setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombFixedSlider;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 27
    return-void
.end method
