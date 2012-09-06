.class public Lcom/dropbox/android/taskqueue/q;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/l;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected final a:Ljava/util/HashMap;

.field private final c:Lcom/dropbox/android/taskqueue/B;

.field private final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/dropbox/android/taskqueue/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    .line 109
    new-instance v0, Lcom/dropbox/android/taskqueue/B;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/dropbox/android/taskqueue/B;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/q;->d:Ljava/util/HashMap;

    .line 168
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)Lcom/dropbox/android/taskqueue/y;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    .line 182
    invoke-direct {p0, p1, p3}, Lcom/dropbox/android/taskqueue/q;->b(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;

    move-result-object v0

    .line 184
    if-nez v0, :cond_15

    .line 185
    if-nez p2, :cond_f

    .line 186
    sget-object v0, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    const-string v1, "Getting local store status for unknown image. No local store and no metadata available!"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_f
    new-instance v0, Lcom/dropbox/android/taskqueue/u;

    invoke-direct {v0, p2}, Lcom/dropbox/android/taskqueue/u;-><init>(Ljava/lang/String;)V

    .line 200
    :goto_14
    return-object v0

    .line 190
    :cond_15
    if-nez p2, :cond_25

    .line 191
    sget-object v0, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    const-string v1, "Have local store but no metadata?!"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/dropbox/android/taskqueue/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/android/taskqueue/w;-><init>(Ljava/lang/String;)V

    goto :goto_14

    .line 193
    :cond_25
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 194
    new-instance v0, Lcom/dropbox/android/taskqueue/x;

    invoke-direct {v0, p2}, Lcom/dropbox/android/taskqueue/x;-><init>(Ljava/lang/String;)V

    goto :goto_14

    .line 196
    :cond_31
    new-instance v0, Lcom/dropbox/android/taskqueue/w;

    invoke-direct {v0, p2}, Lcom/dropbox/android/taskqueue/w;-><init>(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->l()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Lcom/dropbox/android/util/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 204
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 207
    new-array v2, v7, [Ljava/lang/String;

    sget-object v1, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    aput-object v1, v2, v6

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v3, v3, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/dropbox/android/provider/e;->c:Lcom/dropbox/android/provider/a;

    iget-object v3, v3, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {p2}, Ldbxyzptlk/l/o;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    .line 214
    const-string v1, "thumbnail_info"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_63

    .line 216
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 217
    sget-object v1, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    :cond_63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    return-object v5
.end method

.method private a(Lcom/dropbox/android/taskqueue/A;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 244
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/taskqueue/B;->a(Lcom/dropbox/android/taskqueue/A;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 245
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 246
    new-array v2, v9, [Ljava/lang/String;

    sget-object v1, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    aput-object v1, v2, v7

    sget-object v1, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    aput-object v1, v2, v8

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v3, v3, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " like ?  AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/dropbox/android/provider/e;->c:Lcom/dropbox/android/provider/a;

    iget-object v3, v3, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? AND substr("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v3, v3, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ?) not like \'%/%\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/dropbox/android/taskqueue/A;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    iget-object v1, p1, Lcom/dropbox/android/taskqueue/A;->second:Ljava/lang/Object;

    check-cast v1, Ldbxyzptlk/l/o;

    invoke-virtual {v1}, Ldbxyzptlk/l/o;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    iget-object v1, p1, Lcom/dropbox/android/taskqueue/A;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    .line 252
    const-string v1, "thumbnail_info"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_c9

    .line 255
    :try_start_95
    sget-object v0, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 256
    sget-object v0, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 257
    :goto_a5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 258
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-static {v0}, Lcom/dropbox/android/util/aa;->n(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 261
    iget-object v5, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, p1, v0, v4}, Lcom/dropbox/android/taskqueue/B;->a(Lcom/dropbox/android/taskqueue/A;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_95 .. :try_end_c0} :catchall_c1

    goto :goto_a5

    .line 264
    :catchall_c1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_c6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_c9
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/t;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    monitor-enter v3

    .line 387
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 388
    if-eqz v0, :cond_4e

    .line 389
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 391
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 392
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/android/taskqueue/E;

    .line 393
    if-eqz v2, :cond_36

    .line 394
    invoke-interface {p2, v2, p1}, Lcom/dropbox/android/taskqueue/t;->a(Lcom/dropbox/android/taskqueue/E;Ljava/lang/String;)V

    goto :goto_1b

    .line 404
    :catchall_33
    move-exception v0

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0

    .line 396
    :cond_36
    :try_start_36
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 400
    :cond_3a
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 404
    :cond_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_33

    .line 405
    return-void
.end method

.method private a(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    new-instance v0, Lcom/dropbox/android/taskqueue/s;

    invoke-direct {v0, p0, p2, p3}, Lcom/dropbox/android/taskqueue/s;-><init>(Lcom/dropbox/android/taskqueue/q;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V

    .line 428
    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/t;)V

    .line 429
    return-void
.end method

.method private a(Ljava/lang/String;Ldbxyzptlk/l/o;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 656
    invoke-static {p1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    monitor-enter v2

    .line 658
    :try_start_7
    invoke-static {v1}, Lcom/dropbox/android/util/aa;->n(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 659
    iget-object v4, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    new-instance v5, Lcom/dropbox/android/taskqueue/A;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0, p2}, Lcom/dropbox/android/taskqueue/A;-><init>(Ljava/lang/String;Ldbxyzptlk/l/o;)V

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0, p3}, Lcom/dropbox/android/taskqueue/B;->a(Lcom/dropbox/android/taskqueue/A;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->d:Ljava/util/HashMap;

    new-instance v3, Lcom/dropbox/android/taskqueue/z;

    invoke-direct {v3, v1, p2}, Lcom/dropbox/android/taskqueue/z;-><init>(Ljava/lang/String;Ldbxyzptlk/l/o;)V

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_39

    .line 663
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3c

    const/4 v0, 0x1

    .line 664
    :goto_33
    if-eqz v0, :cond_38

    .line 665
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/q;->b()V

    .line 667
    :cond_38
    return-void

    .line 661
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 663
    :cond_3c
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ldbxyzptlk/l/o;Ljava/lang/String;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0, p2, p3}, Lcom/dropbox/android/taskqueue/q;->c(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;

    move-result-object v3

    .line 363
    new-instance v0, Lcom/dropbox/android/taskqueue/ThumbnailTask;

    invoke-static {p1}, Lcom/dropbox/android/taskqueue/v;->a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/ThumbnailTask;-><init>(Ljava/lang/String;Ldbxyzptlk/l/o;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/taskqueue/p;)V

    .line 364
    invoke-virtual {v0, p0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/l;)V

    .line 365
    invoke-static {p1}, Lcom/dropbox/android/taskqueue/v;->a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dropbox/android/taskqueue/p;->b(Lcom/dropbox/android/taskqueue/k;)V

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 506
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 507
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 508
    invoke-static {}, Lcom/dropbox/android/util/aO;->a()[B

    move-result-object v0

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 513
    :try_start_10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_28

    .line 514
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1d} :catch_24
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_2b

    move-result-object v1

    .line 519
    :goto_1e
    if-eqz v0, :cond_23

    .line 521
    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_26

    .line 525
    :cond_23
    :goto_23
    return-object v1

    .line 515
    :catch_24
    move-exception v0

    .line 516
    throw v0

    .line 522
    :catch_26
    move-exception v0

    goto :goto_23

    .line 517
    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_1e

    :catch_2b
    move-exception v2

    goto :goto_1e
.end method

.method private b(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-static {p1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/dropbox/android/util/aa;->n(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 228
    new-instance v3, Lcom/dropbox/android/taskqueue/A;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0, p2}, Lcom/dropbox/android/taskqueue/A;-><init>(Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 230
    invoke-direct {p0, v3}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/A;)V

    .line 232
    iget-object v4, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Lcom/dropbox/android/taskqueue/B;->a(Lcom/dropbox/android/taskqueue/A;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_21

    .line 240
    :goto_20
    return-object v0

    .line 238
    :cond_21
    invoke-direct {p0, v1, p2}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v4, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v3, v0, v1}, Lcom/dropbox/android/taskqueue/B;->a(Lcom/dropbox/android/taskqueue/A;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 240
    goto :goto_20
.end method

.method private b()V
    .registers 13

    .prologue
    .line 596
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 636
    :goto_8
    return-void

    .line 600
    :cond_9
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 601
    new-instance v5, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO thumbnail_info ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->c:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") VALUES (?, ?, ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 604
    iget-object v7, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    monitor-enter v7

    .line 605
    :try_start_56
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    .line 606
    if-nez v8, :cond_5f

    .line 608
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 611
    :cond_5f
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_69
    :goto_69
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/taskqueue/z;

    iget-object v1, v1, Lcom/dropbox/android/taskqueue/z;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 613
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/android/taskqueue/z;

    iget-object v2, v2, Lcom/dropbox/android/taskqueue/z;->second:Ljava/lang/Object;

    check-cast v2, Ldbxyzptlk/l/o;

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 616
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 617
    const/4 v10, 0x1

    invoke-virtual {v6, v10, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 618
    const/4 v1, 0x2

    invoke-virtual {v2}, Ldbxyzptlk/l/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 619
    const/4 v1, 0x3

    invoke-virtual {v6, v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 621
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    .line 622
    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-ltz v1, :cond_69

    .line 623
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 634
    :catchall_b4
    move-exception v0

    monitor-exit v7
    :try_end_b6
    .catchall {:try_start_56 .. :try_end_b6} :catchall_b4

    throw v0

    .line 626
    :cond_b7
    if-nez v8, :cond_bf

    .line 627
    :try_start_b9
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 628
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 631
    :cond_bf
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/z;

    .line 632
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/q;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    .line 634
    :cond_d5
    monitor-exit v7
    :try_end_d6
    .catchall {:try_start_b9 .. :try_end_d6} :catchall_b4

    .line 635
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_8
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 576
    invoke-static {p1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {p2}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 582
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 583
    sget-object v4, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v4, v4, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :try_start_22
    const-string v2, "thumbnail_info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 587
    const/4 v1, -0x1

    if-ne v0, v1, :cond_47

    .line 588
    sget-object v0, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    const-string v1, "Failed to update thumbs in the db"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_47} :catch_48

    .line 593
    :cond_47
    :goto_47
    return-void

    .line 590
    :catch_48
    move-exception v0

    .line 591
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    new-instance v0, Lcom/dropbox/android/taskqueue/r;

    invoke-direct {v0, p0, p2, p3}, Lcom/dropbox/android/taskqueue/r;-><init>(Lcom/dropbox/android/taskqueue/q;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 417
    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/t;)V

    .line 418
    return-void
.end method

.method private b(Ljava/util/HashSet;)V
    .registers 12
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 529
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 531
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 532
    :cond_13
    const-string v1, "thumbnail_info"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/dropbox/android/util/ab;->l()Ljava/io/File;

    move-result-object v0

    invoke-static {v4, v0, p1}, Lcom/dropbox/android/util/ab;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;)V

    .line 571
    :goto_1f
    return-void

    .line 535
    :cond_20
    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    .line 537
    const-string v1, "thumbnail_info"

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v3, v3, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    aput-object v3, v2, v9

    const-string v3, ""

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 541
    :cond_38
    :goto_38
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 542
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    if-eqz p1, :cond_4f

    new-instance v3, Lcom/dropbox/android/util/Z;

    invoke-direct {v3, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 544
    :cond_4f
    invoke-virtual {v8, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 547
    :cond_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 549
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 552
    const/4 v1, 0x1

    :try_start_5a
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, ""

    aput-object v3, v2, v1

    .line 553
    :cond_61
    :goto_61
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_b9

    .line 554
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v3
    :try_end_70
    .catchall {:try_start_5a .. :try_end_70} :catchall_b4

    .line 556
    :try_start_70
    new-instance v1, Lcom/dropbox/android/util/Z;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-direct {v1, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 557
    const-string v1, "thumbnail_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v4, v4, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 558
    const/4 v3, -0x1

    if-ne v1, v3, :cond_61

    .line 559
    sget-object v1, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    const-string v3, "Failed to clear thumbs from the db"

    invoke-static {v1, v3}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_70 .. :try_end_aa} :catchall_b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_70 .. :try_end_aa} :catch_ab

    goto :goto_61

    .line 562
    :catch_ab
    move-exception v1

    .line 563
    :try_start_ac
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_b4

    goto :goto_61

    .line 568
    :catchall_b4
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 566
    :cond_b9
    :try_start_b9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_b4

    .line 568
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1f
.end method

.method private c(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-static {p1}, Lcom/dropbox/android/util/aa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, ".png"

    .line 463
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ldbxyzptlk/l/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 462
    :cond_30
    const-string v0, ".jpg"

    goto :goto_c
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;Landroid/content/res/Resources;)Landroid/util/Pair;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 323
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p2, p3, p4}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)Lcom/dropbox/android/taskqueue/y;

    move-result-object v1

    .line 328
    new-instance v2, Lcom/dropbox/android/taskqueue/D;

    invoke-direct {v2}, Lcom/dropbox/android/taskqueue/D;-><init>()V

    .line 329
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/y;->a()Z

    move-result v3

    iput-boolean v3, v2, Lcom/dropbox/android/taskqueue/D;->a:Z

    .line 330
    iput-boolean v4, v2, Lcom/dropbox/android/taskqueue/D;->b:Z

    .line 332
    iget-boolean v3, v2, Lcom/dropbox/android/taskqueue/D;->a:Z

    if-eqz v3, :cond_1f

    .line 334
    invoke-direct {p0, p2, p4}, Lcom/dropbox/android/taskqueue/q;->c(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;

    move-result-object v3

    .line 336
    :try_start_1b
    invoke-direct {p0, v3}, Lcom/dropbox/android/taskqueue/q;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1e} :catch_39

    move-result-object v0

    .line 343
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/y;->b()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-boolean v3, v2, Lcom/dropbox/android/taskqueue/D;->a:Z

    if-nez v3, :cond_33

    .line 344
    :cond_29
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ldbxyzptlk/l/o;Ljava/lang/String;)Z

    move-result v1

    .line 345
    iput-boolean v1, v2, Lcom/dropbox/android/taskqueue/D;->b:Z

    .line 348
    :cond_33
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 337
    :catch_39
    move-exception v3

    .line 339
    iput-boolean v4, v2, Lcom/dropbox/android/taskqueue/D;->a:Z

    goto :goto_1f
.end method

.method public final a()V
    .registers 1

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/q;->b()V

    .line 640
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 649
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;Landroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    check-cast p1, Lcom/dropbox/android/taskqueue/ThumbnailTask;

    .line 696
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->i()Ldbxyzptlk/l/o;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V

    .line 697
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/v;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    invoke-static {p1}, Lcom/dropbox/android/taskqueue/v;->a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/p;->c()V

    .line 173
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-static {p1}, Lcom/dropbox/android/taskqueue/v;->a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/p;->a(Ljava/lang/String;)Z

    .line 371
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p2, p3, p4}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)Lcom/dropbox/android/taskqueue/y;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/y;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 357
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ldbxyzptlk/l/o;Ljava/lang/String;)Z

    .line 359
    :cond_11
    return-void
.end method

.method public final a(Lcom/dropbox/android/util/Z;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 477
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 478
    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->d()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 480
    :try_start_10
    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ldbxyzptlk/z/a;->a(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_53

    .line 484
    :goto_1b
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 485
    const-string v2, "thumbnail_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v4, v4, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 502
    :cond_52
    :goto_52
    return-void

    .line 481
    :catch_53
    move-exception v1

    .line 482
    sget-object v1, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear thumb from the db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 491
    :cond_71
    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 492
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 493
    const-string v2, "thumbnail_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v4, v4, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 497
    const/4 v1, -0x1

    if-ne v0, v1, :cond_52

    .line 498
    sget-object v0, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear thumb from the db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public final a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/E;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 444
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    monitor-enter v3

    .line 445
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 446
    if-eqz v0, :cond_35

    .line 447
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 448
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/android/taskqueue/E;

    .line 449
    if-ne v2, p2, :cond_11

    .line 450
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_33

    .line 452
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_33
    monitor-exit v3

    .line 459
    :goto_34
    return-void

    .line 458
    :cond_35
    monitor-exit v3

    goto :goto_34

    :catchall_37
    move-exception v0

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 294
    sget-object v0, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving thumbnails for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 299
    invoke-direct {p0, p2}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 305
    :cond_33
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/q;->b()V

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/taskqueue/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 433
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 434
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 435
    if-nez v0, :cond_17

    .line 436
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 437
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/q;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_17
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    monitor-exit v1

    .line 441
    return-void

    .line 440
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public final a(Ljava/util/HashSet;)V
    .registers 3
    .parameter

    .prologue
    .line 276
    sget-object v0, Lcom/dropbox/android/taskqueue/v;->a:Lcom/dropbox/android/taskqueue/v;

    invoke-static {v0}, Lcom/dropbox/android/taskqueue/v;->a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/p;->b()V

    .line 277
    sget-object v0, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    invoke-static {v0}, Lcom/dropbox/android/taskqueue/v;->a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/p;->b()V

    .line 278
    sget-object v0, Lcom/dropbox/android/taskqueue/v;->c:Lcom/dropbox/android/taskqueue/v;

    invoke-static {v0}, Lcom/dropbox/android/taskqueue/v;->a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/p;->b()V

    .line 280
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/q;->c:Lcom/dropbox/android/taskqueue/B;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/B;->a()V

    .line 281
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/q;->b()V

    .line 282
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/q;->b(Ljava/util/HashSet;)V

    .line 283
    return-void
.end method

.method public final b(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 691
    return-void
.end method

.method public final c(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 671
    check-cast p1, Lcom/dropbox/android/taskqueue/ThumbnailTask;

    .line 673
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->i()Ldbxyzptlk/l/o;

    move-result-object v1

    .line 674
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->f()Ljava/lang/String;

    move-result-object v2

    .line 676
    if-nez v2, :cond_15

    .line 677
    sget-object v0, Lcom/dropbox/android/taskqueue/q;->b:Ljava/lang/String;

    const-string v1, "Completed thumb task, but unknown revision! Can\'t update thumbnail store db without knowing the revision!"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_14
    return-void

    .line 680
    :cond_15
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ldbxyzptlk/l/o;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->j()Lcom/dropbox/android/taskqueue/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/taskqueue/p;->f()I

    move-result v3

    if-gt v3, v0, :cond_33

    .line 682
    :goto_26
    if-eqz v0, :cond_2b

    .line 683
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/q;->b()V

    .line 686
    :cond_2b
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Lcom/dropbox/android/taskqueue/q;->b(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    goto :goto_14

    .line 681
    :cond_33
    const/4 v0, 0x0

    goto :goto_26
.end method
