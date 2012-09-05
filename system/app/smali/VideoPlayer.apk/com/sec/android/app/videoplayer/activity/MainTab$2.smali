.class Lcom/sec/android/app/videoplayer/activity/MainTab$2;
.super Ljava/lang/Object;
.source "MainTab.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MainTab;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 177
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$2;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 180
    :cond_11
    return v1
.end method
