.class public Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;
.super Lcom/google/android/apps/unveil/history/SavedQueryProvider;
.source "DatabaseBackedSavedQueryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final contentProvider:Landroid/content/ContentProviderClient;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Landroid/content/Context;)V
    .registers 4
    .parameter "unveilContentProvider"
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SavedQueryProvider;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->handler:Landroid/os/Handler;

    .line 40
    if-nez p1, :cond_12

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 43
    :cond_12
    iput-object p2, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->context:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->contentProvider:Landroid/content/ContentProviderClient;

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/history/SavedQuery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getQueryFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/history/SavedQuery;

    move-result-object v0

    return-object v0
.end method

.method private asyncNotifyListenersOfChange()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$1;-><init>(Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method private getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getQueryFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/history/SavedQuery;
    .registers 11
    .parameter "c"

    .prologue
    .line 168
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 170
    .local v2, id:J
    const-string v0, "query_params"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 173
    .local v6, queryParamsBytes:[B
    if-nez v6, :cond_4d

    .line 175
    const-string v0, "source"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, sourceString:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 177
    invoke-static {p0}, Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;->from(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/protocol/PuggleQueryBuilder;

    move-result-object v1

    .line 186
    .end local v7           #sourceString:Ljava/lang/String;
    .local v1, queryParams:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    :goto_36
    if-eqz v1, :cond_52

    .line 187
    const-string v0, "created"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 188
    .local v4, timestamp:J
    new-instance v0, Lcom/google/android/apps/unveil/history/SavedQuery;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/history/SavedQuery;-><init>(Lcom/google/android/apps/unveil/protocol/QueryBuilder;JJ)V

    .line 191
    .end local v4           #timestamp:J
    :goto_47
    return-object v0

    .line 179
    .end local v1           #queryParams:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .restart local v7       #sourceString:Ljava/lang/String;
    :cond_48
    invoke-static {p0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->from(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v1

    .restart local v1       #queryParams:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    goto :goto_36

    .line 183
    .end local v1           #queryParams:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .end local v7           #sourceString:Ljava/lang/String;
    :cond_4d
    invoke-static {v6}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->parseFrom([B)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v1

    .restart local v1       #queryParams:Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    goto :goto_36

    .line 190
    :cond_52
    sget-object v0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Could not parse a QueryBuilder, skipping this row."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private performDelete(J)Z
    .registers 12
    .parameter "queryId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->contentProvider:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, deletedQueriesCount:I
    packed-switch v0, :pswitch_data_4e

    .line 222
    sget-object v4, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Instead of deleting %d, %d queries were deleted."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_35
    move v2, v3

    .line 228
    .end local v0           #deletedQueriesCount:I
    :goto_36
    return v2

    .line 217
    .restart local v0       #deletedQueriesCount:I
    :pswitch_37
    sget-object v3, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "No queries were deleted."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_41} :catch_42

    goto :goto_36

    .line 226
    .end local v0           #deletedQueriesCount:I
    :catch_42
    move-exception v1

    .line 227
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Could not delete executed pending query."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36

    .line 215
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public delete(J)V
    .registers 4
    .parameter "queryId"

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->performDelete(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->notifyListenersOfChange()V

    .line 237
    :cond_9
    return-void
.end method

.method public get(J)Lcom/google/android/apps/unveil/history/SavedQuery;
    .registers 12
    .parameter "queryId"

    .prologue
    const/4 v8, 0x0

    .line 241
    const/4 v6, 0x0

    .line 243
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->contentProvider:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_45
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_2c

    move-result v0

    if-nez v0, :cond_22

    .line 253
    if-eqz v6, :cond_20

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_20
    move-object v0, v8

    :cond_21
    :goto_21
    return-object v0

    .line 248
    :cond_22
    :try_start_22
    invoke-static {v6}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getQueryFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/history/SavedQuery;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_45
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2c

    move-result-object v0

    .line 253
    if-eqz v6, :cond_21

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 249
    :catch_2c
    move-exception v7

    .line 250
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2d
    sget-object v0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to get query %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_45

    .line 253
    if-eqz v6, :cond_43

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    move-object v0, v8

    goto :goto_21

    .line 253
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_45
    move-exception v0

    if-eqz v6, :cond_4b

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v0
.end method

.method public getQueries()Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;
    .registers 9

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->contentProvider:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1d

    .line 118
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 126
    .end local v6           #c:Landroid/database/Cursor;
    :catch_17
    move-exception v7

    .line 127
    .local v7, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->newEmptyCursor()Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;

    move-result-object v0

    .end local v7           #e:Landroid/os/RemoteException;
    :goto_1c
    return-object v0

    .line 121
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1d
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    invoke-static {}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->newEmptyCursor()Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;

    move-result-object v0

    goto :goto_1c

    .line 125
    :cond_2b
    new-instance v0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;

    invoke-direct {v0, v6}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_30} :catch_17

    goto :goto_1c
.end method

.method public getQueryCount()I
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 93
    const/4 v6, 0x0

    .line 94
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 96
    .local v2, projection:[Ljava/lang/String;
    :try_start_9
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->contentProvider:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    if-nez v6, :cond_30

    .line 99
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1e

    .line 102
    :catch_1e
    move-exception v7

    .line 103
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Could not compute query count."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v1, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_3a

    .line 106
    if-eqz v6, :cond_2e

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2e
    move v0, v8

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return v0

    .line 101
    :cond_30
    :try_start_30
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_1e

    move-result v0

    .line 106
    if-eqz v6, :cond_2f

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    .line 106
    :catchall_3a
    move-exception v0

    if-eqz v6, :cond_40

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0
.end method

.method public onQueryExecuted(J)V
    .registers 5
    .parameter "queryId"

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->performDelete(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->notifyListenersOfChange()V

    .line 200
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/BaseApplication;

    .line 201
    .local v0, application:Lcom/google/android/apps/unveil/BaseApplication;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/BaseApplication;->getSearchHistoryProvider()Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->notifyListenersOfChange()V

    .line 203
    .end local v0           #application:Lcom/google/android/apps/unveil/BaseApplication;
    :cond_18
    return-void
.end method

.method public save(Lcom/google/android/apps/unveil/protocol/QueryBuilder;)Ljava/lang/Long;
    .registers 13
    .parameter "queryParameters"

    .prologue
    const/4 v10, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->canGeneratePicture()Z

    move-result v0

    if-nez v0, :cond_20

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be saved for later because no image data has been provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_20
    invoke-virtual {p1, v10}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->toContentValues()Landroid/content/ContentValues;

    move-result-object v9

    .line 60
    .local v9, queryValues:Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 62
    .local v6, c:Landroid/database/Cursor;
    :try_start_28
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->contentProvider:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    .local v1, savedQueryUri:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->asyncNotifyListenersOfChange()V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->contentProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3f} :catch_63

    move-result-object v6

    .line 65
    if-nez v6, :cond_49

    .line 76
    if-eqz v6, :cond_47

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_47
    move-object v8, v10

    .end local v1           #savedQueryUri:Landroid/net/Uri;
    :cond_48
    :goto_48
    return-object v8

    .line 68
    .restart local v1       #savedQueryUri:Landroid/net/Uri;
    :cond_49
    :try_start_49
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 70
    .local v8, id:Ljava/lang/Long;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5d} :catch_63

    .line 76
    if-eqz v6, :cond_48

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 72
    .end local v1           #savedQueryUri:Landroid/net/Uri;
    .end local v8           #id:Ljava/lang/Long;
    :catch_63
    move-exception v7

    .line 73
    .local v7, e:Landroid/os/RemoteException;
    :try_start_64
    sget-object v0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Could not save %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v7, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_78

    .line 76
    if-eqz v6, :cond_76

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_76
    move-object v8, v10

    goto :goto_48

    .line 76
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_78
    move-exception v0

    if-eqz v6, :cond_7e

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v0
.end method
