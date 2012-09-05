.class Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 6
    .parameter "focusChange"

    .prologue
    .line 816
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioFocusChange - focusChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    packed-switch p1, :pswitch_data_62

    .line 855
    :cond_1b
    :goto_1b
    :pswitch_1b
    return-void

    .line 822
    :pswitch_1c
    const-string v1, "AlarmPlayer"

    const-string v2, "case AudioManager.AUDIOFOCUS_LOSS:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 828
    :try_start_30
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 831
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_56} :catch_5d

    .line 835
    :goto_56
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_1b

    .line 832
    :catch_5d
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 817
    :pswitch_data_62
    .packed-switch -0x2
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method
