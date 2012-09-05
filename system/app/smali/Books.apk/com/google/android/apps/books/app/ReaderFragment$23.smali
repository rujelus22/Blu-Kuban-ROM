.class Lcom/google/android/apps/books/app/ReaderFragment$23;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 2841
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .registers 4
    .parameter "brightness"

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2878
    .local v0, window:Landroid/view/Window;
    invoke-static {p1, v0}, Lcom/google/android/apps/books/util/WindowUtils;->setBrightness(ILandroid/view/Window;)V

    .line 2879
    return-void
.end method

.method public onReadingModeChanged(I)V
    .registers 7
    .parameter "readingMode"

    .prologue
    .line 2846
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v1

    .line 2848
    .local v1, originalRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6100(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v2

    if-ne v2, p1, :cond_18

    .line 2849
    :cond_10
    const-string v2, "ReaderFragment"

    const-string v3, "onReadingModeChanged() missing renderer, or found already matching"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_17
    :goto_17
    return-void

    .line 2854
    :cond_18
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setReadingMode(I)Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v2, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6200(Lcom/google/android/apps/books/app/ReaderFragment;I)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v0

    .line 2855
    .local v0, newRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setupFrom(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 2857
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V
    invoke-static {v2, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6300(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 2858
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->refreshPages()V

    .line 2859
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->resetZoom()V

    .line 2863
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6400(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setReadingMode(I)V

    .line 2864
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/util/VolumeScrubIndex;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->setReadingMode(I)V

    .line 2865
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/ScrubBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 2868
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeStatesEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/apps/books/model/VolumeStatesEditor;->startModeSave(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 2870
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6900(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2871
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6900(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->updateEnabled(I)V

    goto :goto_17
.end method

.method public onTextSettingsChanged()V
    .registers 4

    .prologue
    .line 2893
    const-string v1, "ReaderFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2894
    const-string v1, "ReaderFragment"

    const-string v2, "onTextSettingsChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2898
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->applySettingsIfChanged(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7000(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V

    .line 2899
    return-void
.end method

.method public onTextZoomSettingChanged(F)V
    .registers 6
    .parameter "newTextZoom"

    .prologue
    const/4 v3, 0x3

    .line 2903
    const-string v1, "ReaderFragment"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2904
    const-string v1, "ReaderFragment"

    const-string v2, "onTextZoomSettingChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7100(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 2910
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7102(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Float;)Ljava/lang/Float;

    .line 2913
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeStatesEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/apps/books/model/VolumeStatesEditor;->startTextZoomSave(Landroid/accounts/Account;Ljava/lang/String;F)Ljava/util/concurrent/Future;

    .line 2915
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2916
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->applySettingsIfChanged(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7000(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V

    .line 2920
    .end local v0           #context:Landroid/content/Context;
    :cond_4c
    :goto_4c
    return-void

    .line 2917
    :cond_4d
    const-string v1, "ReaderFragment"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2918
    const-string v1, "ReaderFragment"

    const-string v2, "onTextZoomSettingChanged: no metadata or no mValidTextZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public onThemeChanged()V
    .registers 4

    .prologue
    .line 2883
    const-string v1, "ReaderFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2884
    const-string v1, "ReaderFragment"

    const-string v2, "onThemeChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2888
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$23;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->applySettingsIfChanged(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7000(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V

    .line 2889
    return-void
.end method
