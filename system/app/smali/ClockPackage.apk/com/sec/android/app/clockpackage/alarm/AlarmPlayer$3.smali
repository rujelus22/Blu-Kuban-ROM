.class Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundPlay()V
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
    .line 407
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 409
    const-string v0, "AlarmDetail"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 412
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 417
    const/4 v0, 0x1

    return v0
.end method
