.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 2
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v6, 0x9

    .line 1282
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const v2, 0x7f0a0043

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;
    invoke-static {v3, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$702(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 1284
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1285
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1287
    .local v0, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_56

    .line 1305
    .end local v0           #pressTime:J
    :cond_29
    :goto_29
    const/4 v2, 0x0

    return v2

    .line 1289
    .restart local v0       #pressTime:J
    :pswitch_2b
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1290
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    const v3, 0x36ee80

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_29

    .line 1294
    :pswitch_3d
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_4a

    .line 1295
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v3, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1297
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_29

    .line 1287
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_3d
    .end packed-switch
.end method
