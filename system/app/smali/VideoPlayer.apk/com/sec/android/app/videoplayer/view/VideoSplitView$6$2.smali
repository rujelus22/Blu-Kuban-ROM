.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;
.super Ljava/lang/Object;
.source "VideoSplitView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;)V
    .registers 2
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->removeFileToListInfoArray()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    .line 821
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08003b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$700(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 826
    return-void
.end method
