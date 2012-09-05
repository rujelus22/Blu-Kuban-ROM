.class public final Lcom/google/android/youtube/core/transfer/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/youtube/core/client/ad;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Map;

.field private i:Lcom/google/android/youtube/core/transfer/v;

.field private j:Lcom/google/android/youtube/core/utils/n;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->d:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->e:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->f:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->g:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->h:Ljava/util/Map;

    .line 104
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/s;->a:Landroid/content/Context;

    .line 106
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/s;->b:Landroid/app/Activity;

    .line 107
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->c:Lcom/google/android/youtube/core/client/ad;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/s;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/s;Lcom/google/android/youtube/core/transfer/t;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/s;->b(Lcom/google/android/youtube/core/transfer/t;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/transfer/t;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/g;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/g;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 300
    if-eqz v0, :cond_70

    .line 301
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/Transfer;->a()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v2, "metadata_updated"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->i:Lcom/google/android/youtube/core/transfer/v;

    invoke-interface {v0}, Lcom/google/android/youtube/core/transfer/v;->c()V

    :cond_3f
    :goto_3f
    move v0, v1

    .line 313
    :goto_40
    return v0

    .line 306
    :cond_41
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/g;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/g;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/g;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/transfer/g;->a(Ljava/lang/String;)V

    goto :goto_3f

    .line 309
    :cond_70
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/s;->b(Lcom/google/android/youtube/core/transfer/t;)V

    goto :goto_3f

    .line 313
    :cond_74
    const/4 v0, 0x0

    goto :goto_40
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/s;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->f:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/core/transfer/t;)V
    .registers 13
    .parameter

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/s;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->c(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/g;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->c(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->a(Lcom/google/android/youtube/core/transfer/t;)Lcom/google/android/youtube/core/transfer/b;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V

    .line 334
    :cond_2c
    :goto_2c
    return-void

    .line 331
    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->c:Lcom/google/android/youtube/core/client/ad;

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->d(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->e(Lcom/google/android/youtube/core/transfer/t;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->f(Lcom/google/android/youtube/core/transfer/t;)Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->g(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->h(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->i(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->j(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/t;->k(Lcom/google/android/youtube/core/transfer/t;)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/s;->b:Landroid/app/Activity;

    if-eqz v9, :cond_62

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/s;->b:Landroid/app/Activity;

    new-instance v10, Lcom/google/android/youtube/core/transfer/u;

    invoke-direct {v10, p0, p1}, Lcom/google/android/youtube/core/transfer/u;-><init>(Lcom/google/android/youtube/core/transfer/s;Lcom/google/android/youtube/core/transfer/t;)V

    invoke-static {v9, v10}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v9

    :goto_5e
    invoke-interface/range {v0 .. v9}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_2c

    :cond_62
    new-instance v9, Lcom/google/android/youtube/core/transfer/u;

    invoke-direct {v9, p0, p1}, Lcom/google/android/youtube/core/transfer/u;-><init>(Lcom/google/android/youtube/core/transfer/s;Lcom/google/android/youtube/core/transfer/t;)V

    goto :goto_5e
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/s;)Lcom/google/android/youtube/core/transfer/v;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->i:Lcom/google/android/youtube/core/transfer/v;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 223
    const/4 v0, 0x0

    move v1, v0

    .line 224
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/t;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/s;->a(Lcom/google/android/youtube/core/transfer/t;)Z

    move-result v0

    .line 226
    if-nez v0, :cond_1d

    .line 228
    add-int/lit8 v0, v1, 0x1

    :goto_1a
    move v1, v0

    .line 230
    goto :goto_2

    .line 231
    :cond_1c
    return-void

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

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

    .line 203
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/s;->d()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/g;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/g;->a()Ljava/util/Map;

    move-result-object v0

    .line 205
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

    .line 206
    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v3, "metadata_updated"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 207
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/g;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/g;->a(Ljava/lang/String;)V

    goto :goto_1b

    .line 210
    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(Landroid/content/Context;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    :goto_62
    return-void

    .line 218
    :cond_63
    iput-boolean v4, p0, Lcom/google/android/youtube/core/transfer/s;->k:Z

    goto :goto_62
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v1, :cond_17

    .line 285
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_17
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/v;)V
    .registers 3
    .parameter

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/s;->i:Lcom/google/android/youtube/core/transfer/v;

    .line 113
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/s;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/s;->b()V

    .line 118
    :goto_e
    return-void

    .line 116
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/transfer/UploadService;->a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->j:Lcom/google/android/youtube/core/utils/n;

    goto :goto_e
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/transfer/b;ZZ)V
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
    .line 148
    const-string v0, "Path to the file being uploaded was not provided."

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    const-string v0, "Path to the filename being uploaded was not provided."

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    const-string v0, "userAuth cannot be null."

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "privacy cannot be null."

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "title cannot be null."

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "Video metadata was not provided."

    invoke-static {p10, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v1, Lcom/google/android/youtube/core/transfer/t;

    invoke-direct {v1}, Lcom/google/android/youtube/core/transfer/t;-><init>()V

    .line 155
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/transfer/t;->a(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-static {v1, p2}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {v1, p3}, Lcom/google/android/youtube/core/transfer/t;->a(Lcom/google/android/youtube/core/transfer/t;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 158
    invoke-static {v1, p4}, Lcom/google/android/youtube/core/transfer/t;->a(Lcom/google/android/youtube/core/transfer/t;Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 159
    invoke-static {v1, p5}, Lcom/google/android/youtube/core/transfer/t;->c(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-static {v1, p6}, Lcom/google/android/youtube/core/transfer/t;->d(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/transfer/t;->e(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-static {v1, p8}, Lcom/google/android/youtube/core/transfer/t;->f(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    invoke-static {v1, p9}, Lcom/google/android/youtube/core/transfer/t;->a(Lcom/google/android/youtube/core/transfer/t;Landroid/util/Pair;)Landroid/util/Pair;

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/transfer/t;->g(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    invoke-static {v1, p10}, Lcom/google/android/youtube/core/transfer/t;->a(Lcom/google/android/youtube/core/transfer/t;Lcom/google/android/youtube/core/transfer/b;)Lcom/google/android/youtube/core/transfer/b;

    .line 171
    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/t;->a(Lcom/google/android/youtube/core/transfer/t;)Lcom/google/android/youtube/core/transfer/b;

    move-result-object v0

    const-string v2, "metadata_updated"

    invoke-virtual {v0, v2, p11}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/s;->d()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 177
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/s;->a(Lcom/google/android/youtube/core/transfer/t;)Z

    .line 179
    :cond_64
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/s;->k:Z

    if-eqz v0, :cond_b

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/s;->k:Z

    .line 246
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/s;->a()V

    .line 252
    :goto_a
    return-void

    .line 247
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 248
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/s;->c()V

    goto :goto_a

    .line 250
    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->i:Lcom/google/android/youtube/core/transfer/v;

    invoke-interface {v0}, Lcom/google/android/youtube/core/transfer/v;->b()V

    goto :goto_a
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    .line 265
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->i:Lcom/google/android/youtube/core/transfer/v;

    .line 268
    :cond_a
    return-void
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 262
    return-void
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/t;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/s;->b(Lcom/google/android/youtube/core/transfer/t;)V

    .line 258
    :cond_17
    return-void
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/s;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/t;

    .line 276
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/s;->g:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/s;->i:Lcom/google/android/youtube/core/transfer/v;

    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v3, "metadata_updated"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_29
    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/transfer/v;->a(Z)V

    .line 279
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/s;->c()V

    .line 281
    :cond_2f
    return-void

    .line 277
    :cond_30
    const/4 v0, 0x0

    goto :goto_29
.end method
