.class Lcom/sec/android/app/music/MusicBrowserTabActivity$9;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "tabId"

    .prologue
    const/4 v3, 0x1

    .line 519
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onTabChanged tabId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->clearGridAlbumArtCache()V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #setter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$302(Lcom/sec/android/app/music/MusicBrowserTabActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3c

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeQuickListItem(Landroid/content/Context;)V

    .line 528
    :cond_3c
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v0, v3, :cond_45

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->enableSplitView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1400(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 532
    :cond_45
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mDoNotRefresh:Z
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1500(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->refreshCurrentListView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$500(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->startNowplayingProgress()V

    .line 539
    :cond_61
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->closeOptionsMenu()V

    .line 540
    return-void
.end method
