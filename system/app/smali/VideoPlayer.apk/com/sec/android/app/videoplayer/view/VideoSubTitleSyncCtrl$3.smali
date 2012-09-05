.class Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;
.super Ljava/lang/Object;
.source "VideoSubTitleSyncCtrl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "view"
    .parameter "event"

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 150
    .local v0, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_38

    .line 167
    :goto_11
    const/4 v2, 0x0

    return v2

    .line 152
    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    goto :goto_11

    .line 156
    :pswitch_19
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    const/4 v3, 0x4

    const-wide/16 v4, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->sendMessage(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$000(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;IJ)V

    .line 159
    :cond_27
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$100(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/SeekBar;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    goto :goto_11

    .line 150
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_13
        :pswitch_19
    .end packed-switch
.end method
