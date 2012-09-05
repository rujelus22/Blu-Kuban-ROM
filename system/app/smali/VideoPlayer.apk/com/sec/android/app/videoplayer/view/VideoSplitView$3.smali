.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;
.super Ljava/lang/Object;
.source "VideoSplitView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 681
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 683
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 685
    .local v0, position:I
    packed-switch p2, :pswitch_data_46

    .line 700
    :cond_d
    :goto_d
    const/4 v1, 0x0

    return v1

    .line 687
    :pswitch_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    .line 688
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-le v1, v2, :cond_d

    .line 689
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_d

    .line 693
    :pswitch_26
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    .line 694
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_d

    .line 685
    :pswitch_data_46
    .packed-switch 0x15
        :pswitch_f
        :pswitch_26
    .end packed-switch
.end method
