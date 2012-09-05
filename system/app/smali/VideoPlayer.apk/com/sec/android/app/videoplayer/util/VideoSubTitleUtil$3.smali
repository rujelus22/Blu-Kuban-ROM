.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V
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
    .line 576
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 579
    sparse-switch p2, :sswitch_data_54

    move v0, v1

    .line 613
    :cond_7
    :goto_7
    return v0

    .line 581
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 582
    invoke-static {v1, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->notifySettingChanged(II)V

    .line 583
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7

    .line 584
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 585
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_7

    .line 594
    :sswitch_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 595
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7

    .line 596
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 597
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 598
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_7

    .line 605
    :sswitch_3f
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setOnKeyListener() - KEYCODE_MENU , just hook and drop it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 609
    :sswitch_49
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setOnKeyListener() - KEYCODE_SEARCH , just hook and drop it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 579
    nop

    :sswitch_data_54
    .sparse-switch
        0x4 -> :sswitch_28
        0x1a -> :sswitch_8
        0x52 -> :sswitch_3f
        0x54 -> :sswitch_49
    .end sparse-switch
.end method
