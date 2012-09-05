.class Lcom/google/android/music/ringtone/RingtoneEditActivity$7;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;->onPlay(I)V
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
    .line 1012
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$7;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$7;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #calls: Lcom/google/android/music/ringtone/RingtoneEditActivity;->handlePause()V
    invoke-static {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1600(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1015
    monitor-exit p0

    return-void

    .line 1014
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
