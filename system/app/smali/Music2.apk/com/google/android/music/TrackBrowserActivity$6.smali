.class Lcom/google/android/music/TrackBrowserActivity$6;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveItem(II)V

    .line 924
    return-void
.end method
