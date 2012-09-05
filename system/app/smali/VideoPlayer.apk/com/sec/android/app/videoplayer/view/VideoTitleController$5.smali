.class Lcom/sec/android/app/videoplayer/view/VideoTitleController$5;
.super Ljava/lang/Object;
.source "VideoTitleController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoTitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 322
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 323
    const/4 v0, 0x1

    .line 339
    :goto_7
    return v0

    .line 326
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 339
    :goto_f
    const/4 v0, 0x0

    goto :goto_7

    .line 328
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    move-result-object v0

    const v1, 0x36ee80

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->showControls(I)V

    goto :goto_f

    .line 332
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->startMultiWindow()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$100(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    goto :goto_f

    .line 326
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method
