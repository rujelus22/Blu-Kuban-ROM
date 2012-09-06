.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    iput-object p2, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iput-object p6, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_19
    if-eqz v0, :cond_b

    if-eq v0, p1, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .registers 7

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/content/CursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    :cond_20
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_16

    :cond_13
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->forceLoad()V

    :cond_16
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-void
.end method
