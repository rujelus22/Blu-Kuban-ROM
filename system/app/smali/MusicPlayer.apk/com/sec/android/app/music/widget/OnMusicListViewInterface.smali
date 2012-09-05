.class public interface abstract Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
.super Ljava/lang/Object;
.source "OnMusicListViewInterface.java"


# virtual methods
.method public abstract changeGridView(Z)V
.end method

.method public abstract closeListCursor()V
.end method

.method public abstract getAudioId(I)J
.end method

.method public abstract getCount()I
.end method

.method public abstract getKeyWord()Ljava/lang/String;
.end method

.method public abstract getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;
.end method

.method public abstract invalidateAllViews()V
.end method

.method public abstract isGridView()Z
.end method

.method public abstract reQueryListCursor(Z)V
.end method

.method public abstract setAutoReQuery(Z)V
.end method

.method public abstract setContentChangedListenHandler(Landroid/os/Handler;)V
.end method

.method public abstract startNowplayingProgress()V
.end method

.method public abstract stopNowplayingProgress()V
.end method
