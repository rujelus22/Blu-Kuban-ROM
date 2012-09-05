.class Lcom/sec/android/app/music/MusicBrowserTabActivity$25;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->showDeleteDialog()V
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
    .line 1683
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 1686
    new-array v1, v5, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$2400(Lcom/sec/android/app/music/MusicBrowserTabActivity;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1689
    .local v1, selectedItem:[J
    sget v2, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v2, v5, :cond_4a

    .line 1693
    const/4 v0, 0x0

    .line 1694
    .local v0, hasNoItem:Z
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/MusicContentSplitListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicContentSplitListView;->getRightViewCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 1696
    const/4 v0, 0x1

    .line 1698
    :cond_25
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 1699
    if-eqz v0, :cond_49

    .line 1700
    sget-object v2, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->reQueryCurrentListView()V
    invoke-static {v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$800(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 1706
    .end local v0           #hasNoItem:Z
    :cond_49
    :goto_49
    return-void

    .line 1704
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    goto :goto_49
.end method
