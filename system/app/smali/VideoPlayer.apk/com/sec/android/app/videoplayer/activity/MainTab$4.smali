.class Lcom/sec/android/app/videoplayer/activity/MainTab$4;
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
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 201
    sput-boolean v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$4;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 204
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
