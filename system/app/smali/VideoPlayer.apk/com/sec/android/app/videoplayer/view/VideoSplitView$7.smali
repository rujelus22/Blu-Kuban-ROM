.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$7;
.super Ljava/lang/Object;
.source "VideoSplitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V
    .registers 2
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 844
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 847
    return-void
.end method
