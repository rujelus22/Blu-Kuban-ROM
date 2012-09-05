.class Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackListView$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackListView$TrackListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 1609
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;

    .line 1610
    .local v0, args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTabId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v5}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mKeyWord : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mThumbnailClickListener is clicked........... position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_59

    .line 1614
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1616
    :cond_59
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_6c

    .line 1617
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1619
    :cond_6c
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget v4, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/TrackListView;->getAudioId(I)J

    move-result-wide v1

    .line 1620
    .local v1, audioId:J
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #calls: Lcom/sec/android/app/music/TrackListView;->isDrmFile(J)Z
    invoke-static {v3, v1, v2}, Lcom/sec/android/app/music/TrackListView;->access$2300(Lcom/sec/android/app/music/TrackListView;J)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1622
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget v4, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    const/4 v5, 0x5

    #calls: Lcom/sec/android/app/music/TrackListView;->isValidDrm(II)Z
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/music/TrackListView;->access$2400(Lcom/sec/android/app/music/TrackListView;II)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 1639
    :goto_8d
    return-void

    .line 1628
    :cond_8e
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v4, v4, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 1629
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v3}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v4, v4, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v4

    iget v5, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 1632
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v4, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->button:Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    .line 1633
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    const v4, 0x7f020038

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1634
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1635
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v4, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->progress:Landroid/widget/ProgressBar;

    iput-object v4, v3, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    .line 1636
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1637
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v3, v3, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8d
.end method
