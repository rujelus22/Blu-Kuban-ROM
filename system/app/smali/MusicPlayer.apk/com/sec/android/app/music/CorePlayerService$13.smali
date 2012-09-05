.class Lcom/sec/android/app/music/CorePlayerService$13;
.super Landroid/os/Handler;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 3588
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3591
    const-string v1, "CorePlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHandler.......... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_118

    .line 3637
    :cond_28
    :goto_28
    return-void

    .line 3594
    :pswitch_29
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mWmDrmAcquistionCnt:I

    if-le v1, v5, :cond_28

    .line 3595
    const-string v1, "CorePlayerService"

    const-string v2, "DrmErrorListener aquiring pop up is dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.acquiringrights.statechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3597
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_28

    .line 3602
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4b
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iput v6, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mWmDrmAcquistionCnt:I

    .line 3603
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mCompleteAction:I

    if-ne v1, v4, :cond_94

    .line 3604
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 3605
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mPlay:Z

    if-eqz v1, :cond_7c

    .line 3606
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 3620
    :cond_7c
    :goto_7c
    const-string v1, "CorePlayerService"

    const-string v2, "DrmEventListener aquiring pop up is dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.acquiringrights.statechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3622
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_28

    .line 3609
    .end local v0           #intent:Landroid/content/Intent;
    :cond_94
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mCompleteAction:I

    if-ne v1, v5, :cond_7c

    .line 3610
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mUriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 3611
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mPlay:Z

    if-eqz v1, :cond_7c

    .line 3612
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v1

    if-eqz v1, :cond_d1

    .line 3613
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mSeekTime:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->seek(J)J

    .line 3615
    :cond_d1
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto :goto_7c

    .line 3626
    :pswitch_d7
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mWmDrmAcquistionCnt:I

    if-gt v1, v5, :cond_f0

    .line 3627
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mFielPath:Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I
    invoke-static {v1, v2, v4}, Lcom/sec/android/app/music/CorePlayerService;->access$2700(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;Z)I

    goto/16 :goto_28

    .line 3629
    :cond_f0
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    iput v6, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mWmDrmAcquistionCnt:I

    .line 3630
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mCompleteAction:I

    .line 3632
    const-string v1, "CorePlayerService"

    const-string v2, "ACQUIRE_RIGHT_FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$13;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mFielPath:Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I
    invoke-static {v1, v2, v4}, Lcom/sec/android/app/music/CorePlayerService;->access$2700(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;Z)I

    goto/16 :goto_28

    .line 3592
    nop

    :pswitch_data_118
    .packed-switch 0x28
        :pswitch_29
        :pswitch_4b
        :pswitch_d7
    .end packed-switch
.end method
