.class Lcom/google/android/music/activitymanagement/MusicStateController$3$1;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/MusicStateController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/activitymanagement/MusicStateController$3;

.field final synthetic val$playlist:Lcom/google/android/music/medialist/AutoPlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController$3;Lcom/google/android/music/medialist/AutoPlaylist;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3$1;->this$1:Lcom/google/android/music/activitymanagement/MusicStateController$3;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3$1;->val$playlist:Lcom/google/android/music/medialist/AutoPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3$1;->this$1:Lcom/google/android/music/activitymanagement/MusicStateController$3;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/MusicStateController$3;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$3$1;->val$playlist:Lcom/google/android/music/medialist/AutoPlaylist;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 531
    return-void
.end method
