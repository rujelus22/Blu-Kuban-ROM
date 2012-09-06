.class Lcom/google/android/music/PlaylistBrowserActivity$2;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaylistBrowserActivity;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$2;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$2;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$200(Lcom/google/android/music/PlaylistBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$2;->mCursor:Landroid/database/Cursor;

    .line 161
    return-void
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$2;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$2;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 165
    return-void
.end method
