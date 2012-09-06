.class public LaA/b;
.super Lt/t;
.source "SourceFile"

# interfaces
.implements Lr/t;


# static fields
.field private static a:I

.field private static final c:LaA/b;


# instance fields
.field private d:Ljava/util/Map;

.field private e:Landroid/content/ContentResolver;

.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/16 v0, 0x64

    sput v0, LaA/b;->a:I

    .line 76
    new-instance v0, LaA/b;

    invoke-direct {v0}, LaA/b;-><init>()V

    sput-object v0, LaA/b;->c:LaA/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Lt/t;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/ContentProviderOperation;)V
    .registers 4
    .parameter

    .prologue
    .line 161
    .line 162
    iget-object v1, p0, LaA/b;->f:Ljava/util/List;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, LaA/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, LaA/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    .line 166
    sget v1, LaA/b;->a:I

    if-lt v0, v1, :cond_16

    .line 167
    invoke-direct {p0}, LaA/b;->b()V

    .line 169
    :cond_16
    return-void

    .line 165
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private static a(I)[Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 309
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, LaA/b;->f:Ljava/util/List;

    monitor-enter v1

    .line 177
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, LaA/b;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    iget-object v2, p0, LaA/b;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 179
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_19

    .line 181
    :try_start_11
    iget-object v1, p0, LaA/b;->e:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/googlenav/provider/OfflineIndexProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_18
    .catch Landroid/content/OperationApplicationException; {:try_start_11 .. :try_end_18} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_25

    .line 196
    :goto_18
    return-void

    .line 179
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0

    .line 182
    :catch_1c
    move-exception v0

    .line 191
    iget-object v0, p0, LaA/b;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/googlenav/provider/OfflineIndexProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_18

    .line 192
    :catch_25
    move-exception v0

    goto :goto_18
.end method

.method private static b(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)[Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static c(Lcom/google/android/maps/driveabout/vector/dg;)[Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 301
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dg;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v1, p0, LaA/b;->f:Ljava/util/List;

    monitor-enter v1

    .line 141
    :try_start_4
    iget-object v0, p0, LaA/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "TileCacheIndexer was destroyed before all pending operations were applied"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_14

    .line 146
    iput-object v2, p0, LaA/b;->e:Landroid/content/ContentResolver;

    .line 147
    iput-object v2, p0, LaA/b;->d:Ljava/util/Map;

    .line 148
    iput-object v2, p0, LaA/b;->f:Ljava/util/List;

    .line 149
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 5
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, LaA/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 286
    :goto_8
    return-void

    .line 281
    :cond_9
    const-string v0, "tile_type"

    invoke-static {v0}, LaA/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {p1}, LaA/b;->c(Lcom/google/android/maps/driveabout/vector/dg;)[Ljava/lang/String;

    move-result-object v1

    .line 283
    sget-object v2, Lcom/google/googlenav/provider/OfflineIndexProvider;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-direct {p0, v0}, LaA/b;->a(Landroid/content/ContentProviderOperation;)V

    goto :goto_8
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, LaA/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 271
    :goto_8
    return-void

    .line 262
    :cond_9
    const-string v0, "tile_type"

    invoke-static {v0}, LaA/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shard_id"

    invoke-static {v1}, LaA/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {p1}, LaA/b;->c(Lcom/google/android/maps/driveabout/vector/dg;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, LaA/b;->a(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 268
    sget-object v2, Lcom/google/googlenav/provider/OfflineIndexProvider;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-direct {p0, v0}, LaA/b;->a(Landroid/content/ContentProviderOperation;)V

    goto :goto_8
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;Ln/al;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, LaA/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/c;

    .line 204
    if-nez v0, :cond_b

    .line 213
    :cond_a
    return-void

    .line 207
    :cond_b
    invoke-interface {v0, p2, p3}, LaA/c;->a(Ln/al;I)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 209
    sget-object v2, Lcom/google/googlenav/provider/OfflineIndexProvider;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-direct {p0, v0}, LaA/b;->a(Landroid/content/ContentProviderOperation;)V

    goto :goto_13
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, LaA/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 252
    :goto_8
    return-void

    .line 243
    :cond_9
    const-string v0, "tile_type"

    invoke-static {v0}, LaA/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tile_key"

    invoke-static {v1}, LaA/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {p1}, LaA/b;->c(Lcom/google/android/maps/driveabout/vector/dg;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, LaA/b;->b(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 249
    sget-object v2, Lcom/google/googlenav/provider/OfflineIndexProvider;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-direct {p0, v0}, LaA/b;->a(Landroid/content/ContentProviderOperation;)V

    goto :goto_8
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, LaA/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 233
    :goto_8
    return-void

    .line 223
    :cond_9
    const-string v0, "tile_type"

    invoke-static {v0}, LaA/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tile_key"

    invoke-static {v1}, LaA/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {p1}, LaA/b;->c(Lcom/google/android/maps/driveabout/vector/dg;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, LaA/b;->b(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 229
    sget-object v2, Lcom/google/googlenav/provider/OfflineIndexProvider;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "shard_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-direct {p0, v0}, LaA/b;->a(Landroid/content/ContentProviderOperation;)V

    goto :goto_8
.end method

.method protected b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, LaA/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, LaA/b;->e:Landroid/content/ContentResolver;

    .line 127
    new-instance v0, LaA/e;

    invoke-direct {v0}, LaA/e;-><init>()V

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, LaA/b;->d:Ljava/util/Map;

    .line 129
    iget-object v1, p0, LaA/b;->d:Ljava/util/Map;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaA/b;->f:Ljava/util/List;

    .line 132
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    invoke-direct {p0}, LaA/b;->b()V

    .line 294
    return-void
.end method
