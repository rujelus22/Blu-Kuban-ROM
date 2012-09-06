.class public Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;
.super Ljava/lang/Object;
.source "ProfileRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/ProfileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncGetter"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mContext:Landroid/content/Context;

.field private mDone:Z

.field private mMusicPrefs:Lcom/google/android/music/jumper/MusicPreferences;

.field private mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 5
    .parameter "context"
    .parameter "musicPrefs"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mCancelled:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    .line 60
    iput-boolean v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mDone:Z

    .line 69
    iput-object p1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mMusicPrefs:Lcom/google/android/music/jumper/MusicPreferences;

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mCancelled:Z

    .line 100
    iget-object v0, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 101
    iget-object v0, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 103
    :cond_d
    monitor-exit p0

    return-void

    .line 99
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, info:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    :try_start_1
    new-instance v3, Lcom/google/android/music/utils/ProfileRequest;

    iget-object v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mMusicPrefs:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v3, v4, v5}, Lcom/google/android/music/utils/ProfileRequest;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 110
    .local v3, request:Lcom/google/android/music/utils/ProfileRequest;
    invoke-virtual {v3}, Lcom/google/android/music/utils/ProfileRequest;->getProfileInfo()Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_7b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_56

    move-result-object v1

    .line 118
    monitor-enter p0

    .line 119
    :try_start_f
    iput-object v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    .line 120
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    .line 121
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mDone:Z

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.music.utils.ProfileRequest.AsyncGetter.Ready"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0

    .line 127
    .end local v3           #request:Lcom/google/android/music/utils/ProfileRequest;
    :goto_27
    return-void

    .line 125
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #request:Lcom/google/android/music/utils/ProfileRequest;
    :catchall_28
    move-exception v4

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_28

    throw v4

    .line 111
    .end local v3           #request:Lcom/google/android/music/utils/ProfileRequest;
    :catch_2b
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2c
    invoke-static {}, Lcom/google/android/music/utils/ProfileRequest;->access$000()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 113
    const-string v4, "ProfileRequest"

    const-string v5, "Profile retriever cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_7b

    .line 118
    :cond_39
    monitor-enter p0

    .line 119
    :try_start_3a
    iput-object v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    .line 120
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    .line 121
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mDone:Z

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.music.utils.ProfileRequest.AsyncGetter.Ready"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0

    goto :goto_27

    .end local v2           #intent:Landroid/content/Intent;
    :catchall_53
    move-exception v4

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_53

    throw v4

    .line 115
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_56
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    :try_start_57
    const-string v4, "ProfileRequest"

    const-string v5, "Failed to retrieve user\'s profile"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_7b

    .line 118
    monitor-enter p0

    .line 119
    :try_start_5f
    iput-object v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    .line 120
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    .line 121
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mDone:Z

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.music.utils.ProfileRequest.AsyncGetter.Ready"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0

    goto :goto_27

    .end local v2           #intent:Landroid/content/Intent;
    :catchall_78
    move-exception v4

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_78

    throw v4

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catchall_7b
    move-exception v4

    monitor-enter p0

    .line 119
    :try_start_7d
    iput-object v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    .line 120
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    .line 121
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mDone:Z

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.music.utils.ProfileRequest.AsyncGetter.Ready"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_96

    throw v4

    .end local v2           #intent:Landroid/content/Intent;
    :catchall_96
    move-exception v4

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v4
.end method

.method public start()V
    .registers 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Music User Profile Loader"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    .line 75
    iget-object v0, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method public declared-synchronized waitForProfile(J)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    .registers 6
    .parameter "howLongInMillisec"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mDone:Z

    if-eqz v1, :cond_9

    .line 85
    iget-object v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    .line 94
    :goto_7
    monitor-exit p0

    return-object v1

    .line 88
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_f

    .line 94
    :cond_c
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->mProfileInfo:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    goto :goto_7

    .line 89
    :catch_f
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/android/music/utils/ProfileRequest;->access$000()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 91
    const-string v1, "ProfileRequest"

    const-string v2, "Profile retriever cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    goto :goto_c

    .line 84
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
