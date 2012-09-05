.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;
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
    .line 2018
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2020
    packed-switch p2, :pswitch_data_38

    .line 2048
    :goto_3
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 2023
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3

    .line 2033
    :pswitch_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    goto :goto_3

    .line 2035
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v0

    const v1, 0x36ee80

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_3

    .line 2039
    :pswitch_24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 2040
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_3

    .line 2020
    :pswitch_data_38
    .packed-switch 0x13
        :pswitch_f
        :pswitch_f
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 2033
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_24
    .end packed-switch
.end method
