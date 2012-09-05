.class Lcom/sec/android/app/music/MusicPicker$1;
.super Ljava/lang/Object;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPicker$1;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5
    .parameter "focusChange"

    .prologue
    .line 807
    packed-switch p1, :pswitch_data_56

    .line 822
    const-string v0, "MusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1b
    :goto_1b
    return-void

    .line 809
    :pswitch_1c
    const-string v0, "MusicPicker"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$1;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$1;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$1;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPicker;->stopMediaPlayer()V

    goto :goto_1b

    .line 816
    :pswitch_39
    const-string v0, "MusicPicker"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$1;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$1;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$1;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPicker;->stopMediaPlayer()V

    goto :goto_1b

    .line 807
    :pswitch_data_56
    .packed-switch -0x3
        :pswitch_39
        :pswitch_39
        :pswitch_1c
    .end packed-switch
.end method
