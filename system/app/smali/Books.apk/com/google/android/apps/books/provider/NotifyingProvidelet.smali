.class abstract Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.super Ljava/lang/Object;
.source "NotifyingProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# instance fields
.field private final mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/util/pool/Pool;)V
    .registers 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, builderPool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<Lcom/google/android/apps/books/util/SelectionBuilder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    .line 32
    return-void
.end method

.method private acquireBuilder(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 5
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v1}, Lcom/google/android/apps/books/util/pool/Pool;->acquire()Lcom/google/android/apps/books/util/pool/Poolable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 91
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 92
    return-object v0
.end method


# virtual methods
.method public final delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 77
    invoke-direct {p0, p3, p4}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->acquireBuilder(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 79
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    :try_start_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I

    move-result v1

    .line 80
    .local v1, count:I
    if-lez v1, :cond_15

    .line 81
    iget-object v2, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1b

    .line 85
    :cond_15
    iget-object v2, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v2, v0}, Lcom/google/android/apps/books/util/pool/Pool;->release(Lcom/google/android/apps/books/util/pool/Poolable;)V

    return v1

    .end local v1           #count:I
    :catchall_1b
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v3, v0}, Lcom/google/android/apps/books/util/pool/Pool;->release(Lcom/google/android/apps/books/util/pool/Poolable;)V

    throw v2
.end method

.method protected abstract deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
.end method

.method public final insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 38
    .local v2, result:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 39
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_f} :catch_10

    .line 40
    return-object v2

    .line 41
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #result:Landroid/net/Uri;
    :catch_10
    move-exception v0

    .line 42
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v3, "NotifyingProvidelet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "while insert(uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", values="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    throw v0
.end method

.method protected abstract insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public final query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 50
    invoke-direct {p0, p4, p5}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->acquireBuilder(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v5

    .local v5, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    .line 52
    :try_start_9
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;

    move-result-object v6

    .line 53
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v6, v0, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v0, v5}, Lcom/google/android/apps/books/util/pool/Pool;->release(Lcom/google/android/apps/books/util/pool/Poolable;)V

    return-object v6

    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v1, v5}, Lcom/google/android/apps/books/util/pool/Pool;->release(Lcom/google/android/apps/books/util/pool/Poolable;)V

    throw v0
.end method

.method protected abstract queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;
.end method

.method public final update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 63
    invoke-direct {p0, p4, p5}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->acquireBuilder(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 65
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    :try_start_4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I

    move-result v1

    .line 66
    .local v1, count:I
    if-lez v1, :cond_15

    .line 67
    iget-object v2, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1b

    .line 71
    :cond_15
    iget-object v2, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v2, v0}, Lcom/google/android/apps/books/util/pool/Pool;->release(Lcom/google/android/apps/books/util/pool/Poolable;)V

    return v1

    .end local v1           #count:I
    :catchall_1b
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/books/provider/NotifyingProvidelet;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v3, v0}, Lcom/google/android/apps/books/util/pool/Pool;->release(Lcom/google/android/apps/books/util/pool/Poolable;)V

    throw v2
.end method

.method protected abstract updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
.end method
