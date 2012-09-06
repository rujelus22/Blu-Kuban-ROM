.class public final Lcom/google/android/youtube/core/transfer/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/youtube/core/b/ae;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Map;

.field private i:Lcom/google/android/youtube/core/transfer/aa;

.field private j:Lcom/google/android/youtube/core/utils/v;

.field private k:Z

.field private final l:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Ljava/util/concurrent/Executor;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->d:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->e:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->f:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->g:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->h:Ljava/util/Map;

    .line 110
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->a:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/google/android/youtube/core/transfer/x;->l:Ljava/util/concurrent/Executor;

    .line 112
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/x;->b:Landroid/app/Activity;

    .line 113
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->c:Lcom/google/android/youtube/core/b/ae;

    .line 114
    return-void
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    const-string v1, "mime_type"

    aput-object v1, v2, v5

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 221
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_8c

    move-result v0

    if-nez v0, :cond_25

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 238
    :goto_24
    return-object v3

    .line 224
    :cond_25
    :try_start_25
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 226
    const-string v4, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "not a file uri ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_25 .. :try_end_57} :catchall_8c

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 231
    :cond_5b
    const/4 v2, 0x1

    :try_start_5c
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "invalid file type ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_5c .. :try_end_80} :catchall_8c

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 236
    :cond_84
    :try_start_84
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_8c

    move-result-object v3

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_24

    :catchall_8c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/x;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/x;Lcom/google/android/youtube/core/transfer/y;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/x;->b(Lcom/google/android/youtube/core/transfer/y;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/transfer/y;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 350
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/l;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 353
    if-eqz v0, :cond_76

    .line 359
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/Transfer;->a()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v2, "metadata_updated"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->c(Lcom/google/android/youtube/core/transfer/y;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 362
    :cond_40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->i:Lcom/google/android/youtube/core/transfer/aa;

    invoke-interface {v0}, Lcom/google/android/youtube/core/transfer/aa;->c()V

    :cond_45
    :goto_45
    move v0, v1

    .line 372
    :goto_46
    return v0

    .line 365
    :cond_47
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/l;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;)V

    goto :goto_45

    .line 368
    :cond_76
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/x;->b(Lcom/google/android/youtube/core/transfer/y;)V

    goto :goto_45

    .line 372
    :cond_7a
    const/4 v0, 0x0

    goto :goto_46
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/x;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->f:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/core/transfer/y;)V
    .registers 13
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/x;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->d(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 388
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->d(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;)Lcom/google/android/youtube/core/transfer/d;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V

    .line 393
    :cond_2c
    :goto_2c
    return-void

    .line 390
    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->c:Lcom/google/android/youtube/core/b/ae;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->e(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->f(Lcom/google/android/youtube/core/transfer/y;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->g(Lcom/google/android/youtube/core/transfer/y;)Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->h(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->i(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->j(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->k(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/y;->l(Lcom/google/android/youtube/core/transfer/y;)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/x;->b:Landroid/app/Activity;

    if-eqz v9, :cond_62

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/x;->b:Landroid/app/Activity;

    new-instance v10, Lcom/google/android/youtube/core/transfer/z;

    invoke-direct {v10, p0, p1}, Lcom/google/android/youtube/core/transfer/z;-><init>(Lcom/google/android/youtube/core/transfer/x;Lcom/google/android/youtube/core/transfer/y;)V

    invoke-static {v9, v10}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v9

    :goto_5e
    invoke-interface/range {v0 .. v9}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_2c

    :cond_62
    new-instance v9, Lcom/google/android/youtube/core/transfer/z;

    invoke-direct {v9, p0, p1}, Lcom/google/android/youtube/core/transfer/z;-><init>(Lcom/google/android/youtube/core/transfer/x;Lcom/google/android/youtube/core/transfer/y;)V

    goto :goto_5e
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/x;)Lcom/google/android/youtube/core/transfer/aa;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->i:Lcom/google/android/youtube/core/transfer/aa;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 263
    const/4 v0, 0x0

    move v1, v0

    .line 264
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/y;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/x;->a(Lcom/google/android/youtube/core/transfer/y;)Z

    move-result v0

    .line 266
    if-nez v0, :cond_1d

    .line 268
    add-int/lit8 v0, v1, 0x1

    :goto_1a
    move v1, v0

    .line 270
    goto :goto_2

    .line 271
    :cond_1c
    return-void

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 243
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/x;->d()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/l;->a()Ljava/util/Map;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 246
    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v3, "metadata_updated"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 247
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/l;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;)V

    goto :goto_1b

    .line 250
    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/x;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/v;->b(Landroid/content/Context;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    :goto_62
    return-void

    .line 258
    :cond_63
    iput-boolean v4, p0, Lcom/google/android/youtube/core/transfer/x;->k:Z

    goto :goto_62
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/transfer/d;ZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const-string v0, "URI of the file being uploaded was not provided."

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "filename of the video being uploaded was not provided."

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    const-string v0, "userAuth cannot be null."

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "privacy cannot be null."

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "title cannot be null."

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "Video metadata was not provided."

    invoke-static {p10, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/x;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "fileUri must resolve to a valid video file"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Lcom/google/android/youtube/core/transfer/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/transfer/y;-><init>(B)V

    .line 159
    invoke-static {v1, v0}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-static {v1, p2}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-static {v1, p3}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 162
    if-eqz p11, :cond_3a

    if-eqz p12, :cond_3c

    :cond_3a
    sget-object p4, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    :cond_3c
    invoke-static {v1, p4}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 163
    invoke-static {v1, p5}, Lcom/google/android/youtube/core/transfer/y;->c(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    invoke-static {v1, p6}, Lcom/google/android/youtube/core/transfer/y;->d(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/transfer/y;->e(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-static {v1, p8}, Lcom/google/android/youtube/core/transfer/y;->f(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    invoke-static {v1, p9}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;Landroid/util/Pair;)Landroid/util/Pair;

    .line 173
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/x;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/transfer/y;->g(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;Landroid/net/Uri;)Landroid/net/Uri;

    .line 175
    invoke-static {v1, p12}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;Z)Z

    .line 177
    invoke-static {v1, p10}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/transfer/d;

    .line 178
    if-nez p12, :cond_6e

    .line 181
    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/y;->a(Lcom/google/android/youtube/core/transfer/y;)Lcom/google/android/youtube/core/transfer/d;

    move-result-object v0

    const-string v2, "metadata_updated"

    invoke-virtual {v0, v2, p11}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Z)V

    .line 183
    :cond_6e
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/x;->d()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 185
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/x;->a(Lcom/google/android/youtube/core/transfer/y;)Z

    .line 187
    :cond_7c
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v1, :cond_17

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_17
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/aa;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/x;->i:Lcom/google/android/youtube/core/transfer/aa;

    .line 119
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/x;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/x;->f_()V

    .line 124
    :goto_e
    return-void

    .line 122
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/transfer/UploadService;->a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->j:Lcom/google/android/youtube/core/utils/v;

    goto :goto_e
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    .line 305
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->i:Lcom/google/android/youtube/core/transfer/aa;

    invoke-interface {v0}, Lcom/google/android/youtube/core/transfer/aa;->d()V

    .line 308
    :cond_d
    return-void
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    return-void
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/y;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/x;->b(Lcom/google/android/youtube/core/transfer/y;)V

    .line 298
    :cond_17
    return-void
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 315
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/y;

    .line 329
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/x;->g:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/x;->i:Lcom/google/android/youtube/core/transfer/aa;

    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v3, "metadata_updated"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_29
    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/transfer/aa;->a(Z)V

    .line 332
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/x;->c()V

    .line 334
    :cond_2f
    return-void

    .line 330
    :cond_30
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public final f_()V
    .registers 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/x;->k:Z

    if-eqz v0, :cond_b

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/x;->k:Z

    .line 286
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/x;->a()V

    .line 292
    :goto_a
    return-void

    .line 287
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 288
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/x;->c()V

    goto :goto_a

    .line 290
    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/x;->i:Lcom/google/android/youtube/core/transfer/aa;

    invoke-interface {v0}, Lcom/google/android/youtube/core/transfer/aa;->b()V

    goto :goto_a
.end method
