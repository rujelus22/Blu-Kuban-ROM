.class Lcom/google/android/music/activitymanagement/MusicStateController$3;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/MusicStateController;->openTracksForAutoPlaylist(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

.field final synthetic val$playlistId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    iput-wide p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3;->val$playlistId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 524
    iget-wide v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3;->val$playlistId:J

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$600(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    .line 527
    .local v0, playlist:Lcom/google/android/music/medialist/AutoPlaylist;
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$500(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/activitymanagement/MusicStateController$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController$3$1;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController$3;Lcom/google/android/music/medialist/AutoPlaylist;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method
