.class final Lcom/sec/android/app/music/MusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPicker;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/MusicPicker;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    .line 428
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 429
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_48

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPicker;->mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPicker;->mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_47

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iget-boolean v0, v0, Lcom/sec/android/app/music/MusicPicker;->mListHasFocus:Z

    if-eqz v0, :cond_3e

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 447
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    iput-boolean v2, v0, Lcom/sec/android/app/music/MusicPicker;->mListHasFocus:Z

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->this$0:Lcom/sec/android/app/music/MusicPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 453
    :cond_47
    :goto_47
    return-void

    .line 451
    :cond_48
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_47
.end method
