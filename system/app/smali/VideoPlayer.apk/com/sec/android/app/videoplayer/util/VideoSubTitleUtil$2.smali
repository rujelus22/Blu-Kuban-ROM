.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 508
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 511
    packed-switch p3, :pswitch_data_c2

    .line 573
    :cond_6
    :goto_6
    return-void

    .line 513
    :pswitch_7
    const v3, 0x7f0a005e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 515
    .local v0, checkbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_4f

    .line 516
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnItemClickListener() -Activation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 519
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 520
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubTitleActivationFlag(Z)V

    .line 521
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v3, :cond_4f

    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    if-eqz v3, :cond_4f

    .line 522
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    const-string v4, ""

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleSize()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->tvOutPostHDMISubtitle(Ljava/lang/String;I)V

    .line 531
    :cond_4f
    :goto_4f
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 532
    sput-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 533
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_6

    .line 525
    :cond_5c
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 526
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubTitleActivationFlag(Z)V

    .line 527
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    goto :goto_4f

    .line 537
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :pswitch_68
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 538
    sput-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 539
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    .line 542
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 543
    .local v2, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    iget-object v3, v2, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 544
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->forceHideContols()V

    .line 547
    :cond_85
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v1

    .line 548
    .local v1, syncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    if-eqz v1, :cond_6

    .line 549
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    goto/16 :goto_6

    .line 553
    .end local v1           #syncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    .end local v2           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :pswitch_92
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 554
    sput-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 555
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSelectSubtitlesPopup(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 559
    :pswitch_a6
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 560
    sput-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 561
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createLanguagePopup()V
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$700(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto/16 :goto_6

    .line 565
    :pswitch_b4
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 566
    sput-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 567
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSizePopup()V
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$800(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto/16 :goto_6

    .line 511
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_68
        :pswitch_92
        :pswitch_a6
        :pswitch_b4
    .end packed-switch
.end method
