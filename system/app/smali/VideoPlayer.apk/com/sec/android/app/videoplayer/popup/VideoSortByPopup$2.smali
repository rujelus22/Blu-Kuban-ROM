.class Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;
.super Ljava/lang/Object;
.source "VideoSortByPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v0

    .line 71
    .local v0, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v1, "sortorder"

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->video:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$200(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->video:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$200(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 76
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 78
    :cond_31
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$002(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 79
    return-void

    .line 74
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->changeListView()V

    goto :goto_20
.end method
