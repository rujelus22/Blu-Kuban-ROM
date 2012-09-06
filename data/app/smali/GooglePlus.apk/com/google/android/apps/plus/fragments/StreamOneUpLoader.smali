.class public Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;
.super Landroid/support/v4/content/CursorLoader;
.source "StreamOneUpLoader.java"


# instance fields
.field private final mActivityUri:Landroid/net/Uri;

.field private final mCommentsUri:Landroid/net/Uri;

.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v1, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v1, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 46
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 47
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mActivityUri:Landroid/net/Uri;

    .line 51
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->COMMENTS_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mCommentsUri:Landroid/net/Uri;

    .line 55
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mActivityUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$ActivityQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "data_state = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, activityCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1f

    :cond_1d
    move-object v11, v6

    .line 138
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #activityCursor:Landroid/database/Cursor;
    :goto_1e
    return-object v11

    .line 108
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #activityCursor:Landroid/database/Cursor;
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mCommentsUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$CommentCountQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 110
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_79

    .line 111
    move-object v8, v7

    .line 119
    .local v8, commentCountCursor:Landroid/database/Cursor;
    :goto_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mCommentsUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$CommentQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "created ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 123
    .local v9, commentCursor:Landroid/database/Cursor;
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$LeftoverQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v10, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 124
    .local v10, leftoverCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const v2, 0x7ffffffd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 127
    new-instance v11, Landroid/database/MergeCursor;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    const/4 v2, 0x2

    aput-object v9, v1, v2

    const/4 v2, 0x3

    aput-object v10, v1, v2

    invoke-direct {v11, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 134
    .local v11, merge:Landroid/database/MergeCursor;
    goto :goto_1e

    .line 113
    .end local v8           #commentCountCursor:Landroid/database/Cursor;
    .end local v9           #commentCursor:Landroid/database/Cursor;
    .end local v10           #leftoverCursor:Landroid/database/MatrixCursor;
    .end local v11           #merge:Landroid/database/MergeCursor;
    :cond_79
    if-eqz v7, :cond_7e

    .line 114
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7e} :catch_80

    .line 116
    :cond_7e
    const/4 v8, 0x0

    .restart local v8       #commentCountCursor:Landroid/database/Cursor;
    goto :goto_3a

    .line 135
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #activityCursor:Landroid/database/Cursor;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #commentCountCursor:Landroid/database/Cursor;
    :catch_80
    move-exception v12

    .line 137
    .local v12, t:Ljava/lang/Throwable;
    const-string v1, "StreamOnUpLoader"

    const-string v2, "loadInBackground failed"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v11, v13

    .line 138
    goto :goto_1e
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserverRegistered:Z

    .line 84
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->cancelLoad()Z

    .line 89
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->onReset()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->onAbandon()V

    .line 91
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->onStartLoading()V

    .line 60
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserverRegistered:Z

    if-nez v1, :cond_21

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mActivityUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mCommentsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;->mObserverRegistered:Z

    .line 66
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_21
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method
