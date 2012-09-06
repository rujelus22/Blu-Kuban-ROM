.class Lcom/google/android/music/TrackBrowserActivity$1;
.super Landroid/database/ContentObserver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$mSavedMediaList:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/os/Handler;Lcom/google/android/music/medialist/SongList;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p3, p0, Lcom/google/android/music/TrackBrowserActivity$1;->val$mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$1$1;-><init>(Lcom/google/android/music/TrackBrowserActivity$1;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 268
    return-void
.end method
