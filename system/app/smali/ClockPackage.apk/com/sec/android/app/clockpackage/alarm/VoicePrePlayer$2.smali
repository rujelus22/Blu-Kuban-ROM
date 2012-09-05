.class Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$2;
.super Ljava/lang/Object;
.source "VoicePrePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

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
    .line 98
    const-string v0, "AlarmDetail"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 100
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$302(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 102
    const/4 v0, 0x1

    return v0
.end method
