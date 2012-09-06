.class Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayMediaListRunnable"
.end annotation


# instance fields
.field private final mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private final mSongList:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/medialist/SongList;Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 3
    .parameter "songList"
    .parameter "musicStateController"

    .prologue
    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->mSongList:Lcom/google/android/music/medialist/SongList;

    .line 1019
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 1020
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->mSongList:Lcom/google/android/music/medialist/SongList;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 1025
    return-void
.end method
