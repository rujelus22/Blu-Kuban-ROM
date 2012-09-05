.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;
.super Ljava/lang/Object;
.source "VideoSplitView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoSplitView;->initMainView()V
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
    .line 663
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->setBucket(I)V

    .line 666
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 667
    .local v1, orientation:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 669
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    .local v0, Date:Landroid/content/Intent;
    const-string v2, "bucket_id"

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mBucketID:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$400(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 673
    .end local v0           #Date:Landroid/content/Intent;
    :cond_3b
    return-void
.end method
