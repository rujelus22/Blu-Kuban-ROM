.class Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;
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
    .line 1642
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1646
    .local v3, position:Ljava/lang/Integer;
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTabId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v7, v7, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mKeyWord : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v7, v7, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mThumbnailButtonClickListener is clicked........... position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 1652
    .local v4, service:Lcom/sec/android/app/music/ICorePlayerService;
    :try_start_4a
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/music/TrackListView;->getAudioId(I)J

    move-result-wide v5

    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_b7

    .line 1654
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/TrackListView;->getAudioId(I)J

    move-result-wide v6

    #calls: Lcom/sec/android/app/music/TrackListView;->isDrmFile(J)Z
    invoke-static {v5, v6, v7}, Lcom/sec/android/app/music/TrackListView;->access$2300(Lcom/sec/android/app/music/TrackListView;J)Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_94

    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_94

    .line 1657
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    #calls: Lcom/sec/android/app/music/TrackListView;->isValidDrm(II)Z
    invoke-static {v5, v6, v7}, Lcom/sec/android/app/music/TrackListView;->access$2400(Lcom/sec/android/app/music/TrackListView;II)Z

    move-result v5

    if-nez v5, :cond_94

    .line 1686
    .end local p1
    :cond_93
    :goto_93
    return-void

    .line 1663
    .restart local p1
    :cond_94
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 1664
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->pause()V

    .line 1665
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v5, 0x7f020039

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_a5} :catch_a6

    goto :goto_93

    .line 1683
    :catch_a6
    move-exception v2

    .line 1684
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_93

    .line 1667
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local p1
    :cond_ab
    :try_start_ab
    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->play()V

    .line 1668
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v5, 0x7f020038

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_93

    .line 1671
    .restart local p1
    :cond_b7
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/music/TrackListView;->getAudioId(I)J

    move-result-wide v0

    .line 1672
    .local v0, audioId:J
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #calls: Lcom/sec/android/app/music/TrackListView;->isDrmFile(J)Z
    invoke-static {v5, v0, v1}, Lcom/sec/android/app/music/TrackListView;->access$2300(Lcom/sec/android/app/music/TrackListView;J)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 1674
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    #calls: Lcom/sec/android/app/music/TrackListView;->isValidDrm(II)Z
    invoke-static {v5, v6, v7}, Lcom/sec/android/app/music/TrackListView;->access$2400(Lcom/sec/android/app/music/TrackListView;II)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1680
    :cond_dc
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v5}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 1681
    iget-object v5, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v5, v5, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v5}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;->this$1:Lcom/sec/android/app/music/TrackListView$TrackListAdapter;

    iget-object v6, v6, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_106} :catch_a6

    goto :goto_93
.end method
