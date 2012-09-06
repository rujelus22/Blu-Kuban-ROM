.class Lcom/google/android/music/ringtone/RingtoneEditActivity$2;
.super Ljava/lang/Thread;
.source "RingtoneEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$2;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 179
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$2;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$2;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/ringtone/SeekTest;->CanSeekAccurately(Landroid/content/SharedPreferences;)Z

    move-result v3

    #setter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCanSeekAccurately:Z
    invoke-static {v2, v3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$302(Lcom/google/android/music/ringtone/RingtoneEditActivity;Z)Z

    .line 182
    invoke-static {}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "MusicRingtones"

    const-string v3, "Seek test done, creating media player."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1d
    :try_start_1d
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 185
    .local v1, player:Landroid/media/MediaPlayer;
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$2;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFile:Ljava/io/File;
    invoke-static {v2}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$500(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 186
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 187
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 188
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$2;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #setter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$602(Lcom/google/android/music/ringtone/RingtoneEditActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3b} :catch_3c

    .line 192
    .end local v1           #player:Landroid/media/MediaPlayer;
    :goto_3b
    return-void

    .line 189
    :catch_3c
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MusicRingtones"

    const-string v3, "Read Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method
