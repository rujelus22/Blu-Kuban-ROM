.class public final Lcom/google/android/feeds/core/content/SavedCursorProvider;
.super Landroid/content/ContentProvider;
.source "SavedCursorProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    }
.end annotation


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private final mCursors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mNextId:J

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    .line 135
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/google/android/feeds/core/content/SavedCursorProvider;
    .registers 6
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    const/4 v2, 0x0

    .line 96
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_54

    .line 99
    const-class v1, Lcom/google/android/feeds/core/content/SavedCursorProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 101
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 102
    invoke-static {p0}, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;->get(Landroid/content/Context;)Lcom/google/android/feeds/core/content/ContentProviderClientResolver;

    move-result-object v3

    .line 104
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;->acquireContentProviderClient(Ljava/lang/String;)Lcom/google/android/feeds/core/content/ContentProviderClient;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_1d

    .line 108
    :try_start_3d
    invoke-interface {v3}, Lcom/google/android/feeds/core/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    .line 109
    instance-of v4, v0, Lcom/google/android/feeds/core/content/SavedCursorProvider;

    if-eqz v4, :cond_4b

    .line 110
    check-cast v0, Lcom/google/android/feeds/core/content/SavedCursorProvider;
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4f

    .line 113
    invoke-interface {v3}, Lcom/google/android/feeds/core/content/ContentProviderClient;->release()V

    .line 119
    :goto_4a
    return-object v0

    .line 113
    :cond_4b
    invoke-interface {v3}, Lcom/google/android/feeds/core/content/ContentProviderClient;->release()V

    goto :goto_1d

    :catchall_4f
    move-exception v0

    invoke-interface {v3}, Lcom/google/android/feeds/core/content/ContentProviderClient;->release()V

    throw v0

    .line 119
    :cond_54
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private static getKey(Landroid/net/Uri;)Ljava/lang/Long;
    .registers 4
    .parameter "contentUri"

    .prologue
    .line 88
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 89
    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 8
    .parameter "context"
    .parameter "info"

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 148
    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, authorities:[Ljava/lang/String;
    array-length v3, v0

    if-nez v3, :cond_16

    .line 151
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No authority specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_16
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 155
    .local v1, authority:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/saved_cursors"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, baseUriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mBaseUri:Landroid/net/Uri;

    .line 158
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter "uri"

    .prologue
    .line 173
    iget-object v4, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v4

    .line 174
    :try_start_3
    iget-object v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getKey(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;

    .line 175
    .local v1, cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    if-eqz v1, :cond_1f

    .line 176
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 178
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {v1, v2}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->getType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    .line 180
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :goto_1e
    return-object v3

    :cond_1f
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_1e

    .line 181
    .end local v1           #cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .registers 5

    .prologue
    .line 224
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 225
    iget-object v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v3

    .line 226
    :try_start_6
    iget-object v2, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;

    .line 227
    .local v0, cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    invoke-interface {v0}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->forceClose()V

    goto :goto_10

    .line 230
    .end local v0           #cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v2

    .line 229
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 230
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20

    .line 231
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v5, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v5

    .line 188
    :try_start_4
    iget-object v6, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getKey(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;

    .line 189
    .local v1, cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    if-eqz v1, :cond_51

    .line 190
    invoke-interface {v1}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->getUid()I

    move-result v3

    .line 191
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-ne v3, v6, :cond_28

    const/4 v0, 0x1

    .line 192
    .local v0, callerOwnsCursor:Z
    :goto_1d
    if-eqz v0, :cond_2a

    .line 193
    invoke-interface {v1}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->reopen()V

    .line 194
    invoke-interface {v1}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->get()Landroid/database/Cursor;

    move-result-object v4

    monitor-exit v5

    .line 202
    .end local v0           #callerOwnsCursor:Z
    .end local v3           #uid:I
    :goto_27
    return-object v4

    .line 191
    .restart local v3       #uid:I
    :cond_28
    const/4 v0, 0x0

    goto :goto_1d

    .line 196
    .restart local v0       #callerOwnsCursor:Z
    :cond_2a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process with uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attempted to steal saved cursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, msg:Ljava/lang/String;
    const-string v6, "SavedCursorProvider"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v5

    goto :goto_27

    .line 204
    .end local v0           #callerOwnsCursor:Z
    .end local v1           #cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #uid:I
    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_4e

    throw v4

    .line 202
    .restart local v1       #cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    :cond_51
    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4e

    goto :goto_27
.end method

.method save(Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;)Landroid/net/Uri;
    .registers 9
    .parameter "cursor"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v2

    .line 162
    :try_start_3
    iget-object v1, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mBaseUri:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mNextId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mNextId:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 164
    const-string v1, "SavedCursorProvider"

    const-string v3, "Cursor saved more than once."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1f
    iget-object v1, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getKey(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v2

    return-object v0

    .line 168
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
