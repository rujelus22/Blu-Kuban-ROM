.class Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field albumId:J

.field artistId:J

.field hasLocal:Z

.field hasRemote:Z

.field icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field isKeptInDb:Z

.field line1:Lcom/google/android/music/StatefulShadowTextView;

.field line2:Lcom/google/android/music/StatefulShadowTextView;

.field playlistId:J

.field playlistName:Ljava/lang/String;

.field playlistType:I

.field final synthetic this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
