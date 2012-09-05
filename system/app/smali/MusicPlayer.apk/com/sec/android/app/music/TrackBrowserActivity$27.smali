.class Lcom/sec/android/app/music/TrackBrowserActivity$27;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

.field final synthetic val$positions:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$27;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$27;->val$positions:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$27;->val$positions:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 1724
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$27;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$27;->val$positions:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicContentListView;->restoreCheckedItem(I)V

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1726
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$27;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->refreshCheckedItemsView()V

    .line 1727
    return-void
.end method
