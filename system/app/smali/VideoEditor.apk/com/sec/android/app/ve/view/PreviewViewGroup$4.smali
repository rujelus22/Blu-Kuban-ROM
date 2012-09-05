.class Lcom/sec/android/app/ve/view/PreviewViewGroup$4;
.super Ljava/lang/Object;
.source "PreviewViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)Lcom/sec/android/app/ve/view/PreviewViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 961
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 966
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_4c4

    .line 1292
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 977
    :pswitch_c
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$15(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 979
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$16(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 980
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_2e

    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->isVOIPActivated()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 982
    :cond_2e
    const v5, 0x7f080062

    invoke-static {v5, v7, v9, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_b

    .line 986
    :cond_35
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_4a

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsBatteryLow:Z

    if-eqz v5, :cond_4a

    .line 988
    const v5, 0x7f08006d

    invoke-static {v5, v7, v9, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_b

    .line 992
    :cond_4a
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->checkStorage()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 994
    const v5, 0x7f080077

    invoke-static {v5, v7, v9, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_b

    .line 997
    :cond_57
    invoke-static {v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$17(Z)V

    .line 998
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z
    invoke-static {v5, v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$18(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1000
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$19(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1001
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 1002
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->dimmedBGMDurationBtn()V
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$20(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    .line 1004
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$21()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$1()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1006
    invoke-static {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$22(Z)V

    .line 1007
    invoke-static {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$23(Z)V

    .line 1008
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$24()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1013
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_dd

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v5

    if-eqz v5, :cond_dd

    .line 1015
    invoke-static {v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$25(Z)V

    .line 1016
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v5, v9, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    .line 1018
    const-string v5, "Player :- calling setDisplayForPreviewPlayer"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    .line 1022
    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 1023
    .local v1, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const/16 v5, 0x258

    invoke-virtual {v1, v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setTargetDispWidth(I)V

    .line 1024
    const/16 v5, 0x154

    invoke-virtual {v1, v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setTargetDispHeight(I)V

    .line 1025
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setFullMovieDuration(I)V

    .line 1026
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1027
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->createPreviewPlayer()V

    .line 1028
    invoke-static {v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$26(Z)V

    goto/16 :goto_b

    .line 1034
    .end local v1           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_dd
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$19(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1035
    invoke-static {v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$22(Z)V

    .line 1036
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$18(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    goto/16 :goto_b

    .line 1044
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_f0
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$27()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1045
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$18(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1046
    invoke-static {v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$17(Z)V

    .line 1048
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v5

    if-ne v5, v10, :cond_113

    .line 1050
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->previousTrimElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v5, v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$28(Lcom/sec/android/app/ve/view/PreviewViewGroup;Lcom/samsung/app/video/editor/external/Element;)V

    .line 1052
    :cond_113
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$1()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1055
    const-string v5, "terminating instead of pausing"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1058
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 1059
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->unDimmedBGMDurationBtn()V
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$29(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    .line 1060
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F
    invoke-static {v5, v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$30(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    .line 1065
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$19(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1066
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$31(Lcom/sec/android/app/ve/view/PreviewViewGroup;)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    double-to-float v6, v6

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F
    invoke-static {v5, v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$30(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    goto/16 :goto_b

    .line 1073
    :pswitch_15b
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$32(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_25c

    .line 1074
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 1079
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1080
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ZLM::"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1081
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ZLE:::"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1084
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;
    invoke-static {v5, v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$34(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/graphics/RectF;)V

    .line 1085
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$35(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1086
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$37(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1088
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4$1;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup$4;)V

    .line 1136
    const-wide/16 v7, 0xc8

    .line 1088
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1139
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v3

    .line 1140
    .local v3, pos:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v5, v6, v9}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->smoothScrollTo(II)V

    .line 1141
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$35(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1142
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$44(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1143
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_rect:Z
    invoke-static {v5, v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$45(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1144
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_save:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$46(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x7f080020

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_b

    .line 1148
    .end local v3           #pos:I
    :cond_25c
    const-string v5, "saving end"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1150
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$37(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1151
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$39(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1152
    const-string v5, "Save:Edit of zoom not there adding"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 1154
    .local v0, ken_burn:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v0, v8}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 1155
    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Lcom/samsung/app/video/editor/external/Edit;->setSubType(I)V

    .line 1156
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 1157
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Lcom/samsung/app/video/editor/external/Element;->setMatrix(Landroid/graphics/Matrix;Z)V

    .line 1158
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$39(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lcom/samsung/app/video/editor/external/Element;->setMatrix(Landroid/graphics/Matrix;Z)V

    .line 1159
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->startUp:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$47(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1160
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->toggleSurfaceVisibility(Z)V

    .line 1164
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_:Landroid/graphics/RectF;
    invoke-static {v5, v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$48(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/graphics/RectF;)V

    .line 1165
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$49(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1166
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$35(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/app/video/editor/external/Element;->setStartRect(Landroid/graphics/RectF;)V

    .line 1167
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$49(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/app/video/editor/external/Element;->setEndRect(Landroid/graphics/RectF;)V

    .line 1169
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_rect:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$45(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1170
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->set_rects:Z
    invoke-static {v5, v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$50(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1171
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->decreaseThumbnail(I)V

    .line 1172
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v3

    .line 1173
    .restart local v3       #pos:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v5

    add-int/lit8 v6, v3, 0x5

    invoke-virtual {v5, v6, v9}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 1174
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 1175
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Element co-start:::L:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1176
    const-string v6, "  R:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " B:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1177
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Element co-end:::L:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1178
    const-string v6, "  R:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " B:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1179
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_save:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$46(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x7f080056

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_b

    .line 1226
    .end local v0           #ken_burn:Lcom/samsung/app/video/editor/external/Edit;
    .end local v3           #pos:I
    :pswitch_410
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$44(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1227
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_rect:Z
    invoke-static {v5, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$45(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V

    .line 1228
    const-string v5, "zoom cancel pressed"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1229
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->startUp:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$47(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1230
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->toggleSurfaceVisibility(Z)V

    .line 1231
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->decreaseThumbnail(I)V

    .line 1232
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v3

    .line 1233
    .restart local v3       #pos:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v5

    add-int/lit8 v6, v3, 0x5

    invoke-virtual {v5, v6, v9}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 1234
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v5, v5, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    if-eqz v5, :cond_b

    .line 1236
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v5, v5, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 1238
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->captionTextBtn:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$51(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_b

    .line 1265
    .end local v3           #pos:I
    :pswitch_46e
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->checkStorage()Z

    move-result v5

    if-eqz v5, :cond_485

    .line 1266
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1267
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v5, 0x7f08008d

    invoke-static {v5, v7, v9, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto/16 :goto_b

    .line 1272
    :cond_485
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$16(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1274
    .local v2, mCaptionEditIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1275
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 1279
    .end local v2           #mCaptionEditIntent:Landroid/content/Intent;
    :pswitch_4a1
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1281
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v5

    if-eqz v5, :cond_4b4

    .line 1283
    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 1285
    :cond_4b4
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1286
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDrawingDurationDialog()V

    goto/16 :goto_b

    .line 966
    nop

    :pswitch_data_4c4
    .packed-switch 0x7f0b0093
        :pswitch_f0
        :pswitch_b
        :pswitch_b
        :pswitch_46e
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_15b
        :pswitch_410
        :pswitch_b
        :pswitch_4a1
    .end packed-switch
.end method
