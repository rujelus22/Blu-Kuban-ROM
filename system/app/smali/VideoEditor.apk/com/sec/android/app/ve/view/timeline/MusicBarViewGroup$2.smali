.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;
.super Landroid/os/Handler;
.source "MusicBarViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_44

    .line 112
    :goto_9
    return-void

    .line 99
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarDoubleTap:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;Z)V

    goto :goto_9

    .line 102
    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->showClipDeleteView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .local v0, p:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_9

    .line 94
    :pswitch_data_44
    .packed-switch 0xb
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
