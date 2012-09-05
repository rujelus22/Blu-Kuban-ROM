.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1310
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x9

    .line 1313
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1315
    .local v0, pressTime:J
    packed-switch p2, :pswitch_data_44

    .line 1343
    :goto_f
    :pswitch_f
    const/4 v2, 0x0

    return v2

    .line 1324
    :pswitch_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    goto :goto_f

    .line 1327
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1328
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    const v3, 0x36ee80

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_f

    .line 1332
    :pswitch_2b
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_38

    .line 1333
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v3, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1335
    :cond_38
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_f

    .line 1315
    :pswitch_data_44
    .packed-switch 0x13
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
    .end packed-switch

    .line 1324
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2b
    .end packed-switch
.end method
