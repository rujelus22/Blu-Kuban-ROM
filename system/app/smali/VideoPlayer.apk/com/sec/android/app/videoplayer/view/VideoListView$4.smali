.class Lcom/sec/android/app/videoplayer/view/VideoListView$4;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;->initMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

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

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->changeAllState(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)V

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 867
    :goto_25
    return-void

    .line 863
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->changeAllState(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_25
.end method
