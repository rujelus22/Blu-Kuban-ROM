.class Lcom/sec/android/app/videoplayer/view/VideoListView$7;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 913
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 915
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4a

    .line 916
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 917
    .local v0, focus_position:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v3

    rem-int v3, v0, v3

    sub-int v1, v2, v3

    .line 919
    .local v1, focus_x:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 920
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v2

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNextFocusUpId(I)V

    .line 922
    :cond_34
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4a

    .line 923
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v2

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNextFocusRightId(I)V

    .line 926
    .end local v0           #focus_position:I
    .end local v1           #focus_x:I
    :cond_4a
    const/4 v2, 0x0

    return v2
.end method
