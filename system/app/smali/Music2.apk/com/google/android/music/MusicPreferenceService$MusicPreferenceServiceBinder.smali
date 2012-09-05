.class public Lcom/google/android/music/MusicPreferenceService$MusicPreferenceServiceBinder;
.super Landroid/app/Service;
.source "MusicPreferenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPreferenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicPreferenceServiceBinder"
.end annotation


# instance fields
.field private mMusicPreferenceService:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicPreferenceService$MusicPreferenceServiceBinder;->mMusicPreferenceService:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPreferenceService$MusicPreferenceServiceBinder;->mMusicPreferenceService:Landroid/os/Binder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 168
    iget-object v0, p0, Lcom/google/android/music/MusicPreferenceService$MusicPreferenceServiceBinder;->mMusicPreferenceService:Landroid/os/Binder;

    if-nez v0, :cond_e

    .line 169
    new-instance v0, Lcom/google/android/music/MusicPreferenceService;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPreferenceService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPreferenceService$MusicPreferenceServiceBinder;->mMusicPreferenceService:Landroid/os/Binder;

    .line 171
    :cond_e
    return-void
.end method
