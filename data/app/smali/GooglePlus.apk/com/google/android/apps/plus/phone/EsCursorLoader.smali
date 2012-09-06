.class public Lcom/google/android/apps/plus/phone/EsCursorLoader;
.super Landroid/support/v4/content/CursorLoader;
.source "EsCursorLoader.java"


# instance fields
.field private mLoaderException:Z

.field private final mNotificationUri:Landroid/net/Uri;

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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "notificationUri"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mNotificationUri:Landroid/net/Uri;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 46
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "notificationUri"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 55
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mNotificationUri:Landroid/net/Uri;

    .line 56
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 113
    if-eqz p1, :cond_13

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    .line 114
    .local v0, isCursorClosed:Z
    :goto_9
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mLoaderException:Z

    if-nez v1, :cond_15

    if-nez v0, :cond_15

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 119
    :cond_12
    :goto_12
    return-void

    .line 113
    .end local v0           #isCursorClosed:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    .line 116
    .restart local v0       #isCursorClosed:Z
    :cond_15
    if-eqz v0, :cond_12

    .line 117
    const-string v1, "EsCursorLoader"

    const-string v2, "Cursor was delivered closed.  This should never happen"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final loadInBackground()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 104
    .local v0, cursor:Landroid/database/Cursor;
    :goto_4
    return-object v0

    .line 98
    .end local v0           #cursor:Landroid/database/Cursor;
    :catch_5
    move-exception v1

    .line 99
    .local v1, ex:Ljava/lang/Throwable;
    const-string v2, "EsCursorLoader"

    const-string v3, "loadInBackground failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mLoaderException:Z

    .line 101
    const/4 v0, 0x0

    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserverRegistered:Z

    .line 130
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->cancelLoad()Z

    .line 138
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->onReset()V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->onAbandon()V

    .line 140
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->onStartLoading()V

    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserverRegistered:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mNotificationUri:Landroid/net/Uri;

    if-eqz v0, :cond_1e

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mNotificationUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsCursorLoader;->mObserverRegistered:Z

    .line 69
    :cond_1e
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method
