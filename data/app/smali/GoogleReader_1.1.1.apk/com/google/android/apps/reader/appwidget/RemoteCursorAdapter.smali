.class abstract Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;
.super Ljava/lang/Object;
.source "RemoteCursorAdapter.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mRowIDColumn:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 49
    if-eqz p1, :cond_d

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    :goto_8
    iput v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mRowIDColumn:I

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 51
    return-void

    .line 49
    :cond_d
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .registers 3
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 67
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_d

    iget v1, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_c
    return-wide v1

    :cond_d
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_9
    return-void
.end method
