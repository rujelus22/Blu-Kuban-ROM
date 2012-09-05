.class Lcom/sec/android/app/music/TrackBrowserActivity$41;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2487
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$41;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 2490
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$41;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 2491
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$41;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/music/MusicContentListView;->setAutoReQuery(Z)V

    .line 2492
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$41;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicContentListView;->reQueryListCursor(Z)V

    .line 2494
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$41;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1900(Lcom/sec/android/app/music/TrackBrowserActivity;)I

    move-result v1

    if-ne v1, v3, :cond_40

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$41;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$800(Lcom/sec/android/app/music/TrackBrowserActivity;)I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_40

    .line 2495
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$41;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v1

    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicContentListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2496
    .local v0, v:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2499
    .end local v0           #v:Landroid/view/View;
    :cond_40
    return-void
.end method
