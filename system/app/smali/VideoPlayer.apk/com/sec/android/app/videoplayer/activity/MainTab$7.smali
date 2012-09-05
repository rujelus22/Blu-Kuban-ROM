.class Lcom/sec/android/app/videoplayer/activity/MainTab$7;
.super Landroid/database/ContentObserver;
.source "MainTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MainTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MainTab;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MainTab;->isPause:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->access$000(Lcom/sec/android/app/videoplayer/activity/MainTab;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    #setter for: Lcom/sec/android/app/videoplayer/activity/MainTab;->nSelectedTab:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MainTab;->access$102(Lcom/sec/android/app/videoplayer/activity/MainTab;I)I

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 442
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 443
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MainTab;->nSelectedTab:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/MainTab;->access$100(Lcom/sec/android/app/videoplayer/activity/MainTab;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 446
    :cond_2f
    return-void
.end method
