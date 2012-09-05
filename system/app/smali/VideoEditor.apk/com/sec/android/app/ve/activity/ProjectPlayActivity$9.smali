.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;
.super Landroid/os/Handler;
.source "ProjectPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 934
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/high16 v8, 0x447a

    const/16 v7, 0x6c

    const/4 v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 936
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_32

    .line 943
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 947
    .local v0, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 948
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->createPreviewPlayer()V

    .line 1136
    .end local v0           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_31
    :goto_31
    return-void

    .line 949
    :cond_32
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_ae

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handling fwd msg::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 952
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 953
    const-string v2, "MSG_CALL_FWD::next"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 958
    .restart local v0       #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 959
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 960
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->createPreviewPlayer()V

    .line 961
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$23(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 962
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 963
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 964
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 968
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_31

    .line 970
    .end local v0           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_ae
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_118

    .line 971
    const-string v2, "handling prev msg"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 973
    const-string v2, "MSG_CALL_PREV::next"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 976
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 978
    .restart local v0       #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 979
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 980
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->createPreviewPlayer()V

    .line 981
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$23(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 982
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 983
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 984
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 985
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_31

    .line 987
    .end local v0           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_118
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x68

    if-ne v2, v3, :cond_1e2

    .line 989
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 990
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v3

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 991
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    .line 992
    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v2

    .line 991
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 994
    .local v1, lfulltime:I
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-le v2, v1, :cond_1b9

    .line 995
    const-string v2, "runtime > fulltime"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 997
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->story_time:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->full_time:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$26(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    :goto_180
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->timeline:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$27(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1008
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getCurrentPlayingElement(J)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$28(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;J)V

    .line 1009
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1010
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showCaption()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$29(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto/16 :goto_31

    .line 1003
    :cond_1b9
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->story_time:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->full_time:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$26(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_180

    .line 1012
    .end local v1           #lfulltime:I
    :cond_1e2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x69

    if-ne v2, v3, :cond_20b

    .line 1013
    const-string v2, "create player after 500ms"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1014
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1015
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    .line 1016
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6b

    const-wide/16 v4, 0xb4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_31

    .line 1025
    :cond_20b
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_258

    .line 1026
    const-string v2, "check for pause"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$14(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "player paused in mHandler::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1035
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_31

    .line 1042
    :cond_258
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_36c

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isplaying?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " controlVisisble?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1044
    const-string v3, " controllerTouch?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controllerTouch:Z
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$30(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seeking?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$14(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " playerlockstate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playerLockState:Z
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$31(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1045
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_2ed

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_2ed

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controllerTouch:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$30(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_2ed

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$14(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_2ed

    .line 1046
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$32(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1047
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$33(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1048
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    goto/16 :goto_31

    .line 1049
    :cond_2ed
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_33e

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_33e

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controllerTouch:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$30(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_33e

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$14(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_33e

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playerLockState:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$31(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_33e

    .line 1050
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$32(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1051
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$33(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1052
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1053
    const-string v2, "D1"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1054
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_31

    .line 1055
    :cond_33e
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1056
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$32(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1057
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$33(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1058
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1059
    const-string v2, "D1"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1062
    :cond_36c
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_3bc

    .line 1063
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_3ad

    .line 1064
    const-string v2, "MSG_CHECK_FOR_PLAYING::isplaying"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1066
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    .line 1067
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1068
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1069
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1070
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_31

    .line 1073
    :cond_3ad
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6d

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_31

    .line 1075
    :cond_3bc
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_426

    .line 1076
    const-string v2, "just single tap on surface"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1077
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSingleClick:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$36(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1078
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_3f5

    .line 1079
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$32(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1080
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$33(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1081
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1091
    :goto_3ee
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSingleClick:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$37(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    goto/16 :goto_31

    .line 1084
    :cond_3f5
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$32(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1085
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$33(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1086
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1087
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    const-string v2, "D2"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1089
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3ee

    .line 1093
    :cond_426
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_48e

    .line 1094
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1095
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current time :::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::pp pos::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    .line 1099
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1100
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1101
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1102
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_31

    .line 1104
    :cond_48e
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x70

    if-ne v2, v3, :cond_31

    .line 1105
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1106
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_4cd

    .line 1107
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1115
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1117
    .restart local v0       #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1118
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->call_play()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$38(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    goto/16 :goto_31

    .line 1129
    .end local v0           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_4cd
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1131
    .restart local v0       #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1132
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->createPreviewPlayer()V

    goto/16 :goto_31
.end method
