.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;
.super Ljava/lang/Object;
.source "VideoSplitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 712
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$500(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$500(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->changeAllState(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$600(Lcom/sec/android/app/videoplayer/view/VideoSplitView;Z)V

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$700(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 723
    :goto_25
    return-void

    .line 719
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$500(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->changeAllState(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$600(Lcom/sec/android/app/videoplayer/view/VideoSplitView;Z)V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$700(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_25
.end method
