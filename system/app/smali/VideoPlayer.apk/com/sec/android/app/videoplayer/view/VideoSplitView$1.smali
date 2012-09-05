.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;
.super Ljava/lang/Object;
.source "VideoSplitView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoSplitView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

.field x:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v8, 0xc8

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 161
    .local v0, orientation:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_8c

    .line 195
    :goto_19
    return v3

    .line 163
    :pswitch_1a
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ImageView;

    move-result-object v3

    const v5, 0x7f020098

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$100()Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->changeDividerPointImage(Z)V

    :goto_2d
    move v3, v4

    .line 195
    goto :goto_19

    .line 168
    :pswitch_2f
    if-ne v0, v6, :cond_42

    .line 169
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v2

    .line 170
    .local v2, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v5, "split_width"

    iget v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 172
    .end local v2           #spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    :cond_42
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020095

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$100()Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->changeDividerPointImage(Z)V

    goto :goto_2d

    .line 177
    :pswitch_56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    .line 179
    if-ne v0, v4, :cond_77

    .line 180
    iput v7, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    .line 187
    :cond_61
    :goto_61
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    invoke-direct {v1, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, -0x13

    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2d

    .line 181
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_77
    if-ne v0, v6, :cond_61

    .line 182
    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    if-ge v5, v8, :cond_80

    .line 183
    iput v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    goto :goto_61

    .line 184
    :cond_80
    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    const/16 v6, 0x2bc

    if-le v5, v6, :cond_61

    .line 185
    const/16 v5, 0x2bc

    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;->x:I

    goto :goto_61

    .line 161
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_2f
        :pswitch_56
    .end packed-switch
.end method
