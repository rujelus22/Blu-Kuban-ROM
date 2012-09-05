.class public abstract Lcom/sec/android/app/music/widget/CommonMusicListView;
.super Lcom/sec/android/app/music/widget/SweepableListView;
.source "CommonMusicListView.java"

# interfaces
.implements Lcom/sec/android/app/music/widget/OnCursorChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/widget/SweepableListView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract closeCursor()V
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/sec/android/app/music/widget/SweepableListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIsSelectedAll()Z
.end method

.method protected abstract init(Landroid/database/Cursor;)V
.end method

.method public onCursorChanged(Landroid/database/Cursor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->init(Landroid/database/Cursor;)V

    .line 34
    return-void
.end method

.method public abstract reQueryListCursor(Z)V
.end method

.method public abstract setAllItemChecked(Z)V
.end method

.method public abstract setAutoReQuery(Z)V
.end method

.method public abstract setCheckBoxView(Landroid/widget/CheckBox;)V
.end method

.method public abstract setContentChangedListenHandler(Landroid/os/Handler;)V
.end method

.method public abstract setSoftButton(Landroid/widget/Button;)V
.end method
