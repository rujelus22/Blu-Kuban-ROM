.class Lcom/sec/android/app/music/AudioPreview$41;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPlayReadyErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 5523
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z
    .registers 12
    .parameter "mp"
    .parameter "what"
    .parameter "extra"
    .parameter "error"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5527
    if-eqz p4, :cond_e6

    .line 5528
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<<<<<<<<<<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service specific error - string :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5531
    invoke-static {p4}, Lcom/sec/android/app/music/AudioPreview;->access$5102(Ljava/lang/String;)Ljava/lang/String;

    .line 5532
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 5533
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v6, v1, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5534
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v2, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v2, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 5535
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v2, 0x2

    iput v2, v1, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5536
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 5537
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 5538
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 5539
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    .line 5540
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/AudioPreview;->access$4502(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5541
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "pyv_wmdrm_file is made false for service specific error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    const/4 v0, 0x0

    .line 5544
    .local v0, resId:I
    sparse-switch p3, :sswitch_data_f0

    .line 5559
    :goto_94
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$4900(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 5560
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900ed

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mPlayreadyPopupOkListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lcom/sec/android/app/music/AudioPreview;->access$5600(Lcom/sec/android/app/music/AudioPreview;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    .line 5566
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/music/AudioPreview;->access$4902(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5572
    .end local v0           #resId:I
    :cond_d5
    :goto_d5
    return v5

    .line 5546
    .restart local v0       #resId:I
    :sswitch_d6
    const v0, 0x7f0900dd

    .line 5547
    goto :goto_94

    .line 5549
    :sswitch_da
    const v0, 0x7f0900e2

    .line 5550
    goto :goto_94

    .line 5552
    :sswitch_de
    const v0, 0x7f0900e3

    .line 5553
    goto :goto_94

    .line 5555
    :sswitch_e2
    const v0, 0x7f0900e4

    goto :goto_94

    .line 5569
    .end local v0           #resId:I
    :cond_e6
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$41;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR is NULL URL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 5544
    :sswitch_data_f0
    .sparse-switch
        -0x40 -> :sswitch_e2
        -0x3d -> :sswitch_de
        -0x3c -> :sswitch_da
        -0x31 -> :sswitch_d6
    .end sparse-switch
.end method
