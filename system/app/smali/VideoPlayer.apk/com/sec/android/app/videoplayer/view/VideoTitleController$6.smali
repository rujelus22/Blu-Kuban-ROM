.class Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;
.super Ljava/lang/Object;
.source "VideoTitleController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoTitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isKeyDowned:Z

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .registers 3
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;->isKeyDowned:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 348
    packed-switch p2, :pswitch_data_2a

    .line 374
    :goto_4
    :pswitch_4
    return v2

    .line 356
    :pswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    goto :goto_4

    .line 358
    :pswitch_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;->isKeyDowned:Z

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    move-result-object v0

    const v1, 0x36ee80

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->showControls(I)V

    goto :goto_4

    .line 363
    :pswitch_1d
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;->isKeyDowned:Z

    if-eqz v0, :cond_26

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->startMultiWindow()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$100(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    .line 366
    :cond_26
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;->isKeyDowned:Z

    goto :goto_4

    .line 348
    nop

    :pswitch_data_2a
    .packed-switch 0x13
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 356
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1d
    .end packed-switch
.end method
