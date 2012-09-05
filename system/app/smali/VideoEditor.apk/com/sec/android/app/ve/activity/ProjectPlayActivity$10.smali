.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;
.super Ljava/lang/Object;
.source "ProjectPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1e4

    .line 1292
    :cond_b
    :goto_b
    return-void

    .line 1185
    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1186
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$13(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1187
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1196
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1197
    .local v0, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setFullMovieDuration(I)V

    .line 1198
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1199
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->call_play()V
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$38(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    .line 1200
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1201
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_b

    .line 1210
    .end local v0           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_61
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1211
    .restart local v0       #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1212
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->createPreviewPlayer()V

    goto :goto_b

    .line 1216
    .end local v0           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :sswitch_86
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current time :::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::pp pos::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    .line 1221
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1223
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1224
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_b

    .line 1225
    :cond_eb
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1226
    const-string v1, "fast seeking and pressing pause button"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1227
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6d

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 1234
    :sswitch_107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "back pressed::Pos::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1237
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-nez v1, :cond_12f

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 1238
    :cond_12f
    const-string v1, "back pressed,go back"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1239
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1240
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1242
    :cond_140
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v1

    if-eqz v1, :cond_160

    .line 1243
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 1246
    :goto_153
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 1245
    :cond_160
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_count:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$39(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    goto :goto_153

    .line 1255
    :sswitch_16e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fwd pressed::Pos::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-nez v1, :cond_196

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 1259
    :cond_196
    const-string v1, "fwd pressed,go next"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1260
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1261
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V

    .line 1267
    :cond_1a7
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    .line 1268
    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1267
    if-eq v1, v2, :cond_1d7

    .line 1269
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    .line 1272
    :goto_1ca
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 1271
    :cond_1d7
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #setter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I
    invoke-static {v1, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V

    goto :goto_1ca

    .line 1276
    :sswitch_1dd
    const-string v1, "surface Clicked"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1183
    :sswitch_data_1e4
    .sparse-switch
        0x7f0b00ba -> :sswitch_1dd
        0x7f0b00c2 -> :sswitch_107
        0x7f0b00c4 -> :sswitch_c
        0x7f0b00c5 -> :sswitch_86
        0x7f0b00c6 -> :sswitch_16e
    .end sparse-switch
.end method
