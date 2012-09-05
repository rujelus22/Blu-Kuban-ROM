.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 622
    sparse-switch p2, :sswitch_data_52

    move v0, v1

    .line 653
    :cond_6
    :goto_6
    return v0

    .line 624
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 625
    invoke-static {v1, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->notifySettingChanged(II)V

    .line 626
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_6

    .line 634
    :sswitch_1f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 635
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 636
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    if-eqz v1, :cond_38

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    goto :goto_6

    .line 639
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_6

    .line 645
    :sswitch_3e
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mKeyListener() - KEYCODE_MENU , just hook and drop it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 649
    :sswitch_48
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mKeyListener() - KEYCODE_SEARCH , just hook and drop it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 622
    :sswitch_data_52
    .sparse-switch
        0x4 -> :sswitch_1f
        0x1a -> :sswitch_7
        0x52 -> :sswitch_3e
        0x54 -> :sswitch_48
    .end sparse-switch
.end method
