.class public final Lcom/dropbox/android/filemanager/g;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/E;


# static fields
.field private static final h:Lcom/dropbox/android/taskqueue/v;

.field private static k:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/HashMap;

.field protected final b:Lcom/dropbox/android/util/G;

.field protected final c:Lcom/dropbox/android/filemanager/p;

.field protected final d:Ljava/util/HashMap;

.field protected e:Lcom/dropbox/android/filemanager/m;

.field protected f:Z

.field private final g:Ldbxyzptlk/l/o;

.field private i:Ljava/util/concurrent/BlockingQueue;

.field private j:Ljava/util/concurrent/ThreadPoolExecutor;

.field private l:Ljava/util/HashMap;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/dropbox/android/taskqueue/v;->c:Lcom/dropbox/android/taskqueue/v;

    sput-object v0, Lcom/dropbox/android/filemanager/g;->h:Lcom/dropbox/android/taskqueue/v;

    .line 100
    const-class v0, Lcom/dropbox/android/filemanager/b;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/filemanager/g;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/dropbox/android/filemanager/m;Lcom/dropbox/android/filemanager/g;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/dropbox/android/filemanager/p;

    invoke-direct {v0, p0, v8}, Lcom/dropbox/android/filemanager/p;-><init>(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/h;)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->c:Lcom/dropbox/android/filemanager/p;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    .line 66
    iput-boolean v9, p0, Lcom/dropbox/android/filemanager/g;->f:Z

    .line 93
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->i:Ljava/util/concurrent/BlockingQueue;

    .line 94
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/dropbox/android/filemanager/g;->i:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcom/dropbox/android/filemanager/o;

    invoke-direct {v7, v8}, Lcom/dropbox/android/filemanager/o;-><init>(Lcom/dropbox/android/filemanager/h;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 103
    iput v9, p0, Lcom/dropbox/android/filemanager/g;->m:I

    .line 112
    iput-object p2, p0, Lcom/dropbox/android/filemanager/g;->e:Lcom/dropbox/android/filemanager/m;

    .line 113
    new-instance v0, Lcom/dropbox/android/util/G;

    const/16 v1, 0x4b

    invoke-direct {v0, p1, v1}, Lcom/dropbox/android/util/G;-><init>(II)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    .line 114
    iget-object v0, p3, Lcom/dropbox/android/filemanager/g;->g:Ldbxyzptlk/l/o;

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->g:Ldbxyzptlk/l/o;

    .line 115
    iget-object v0, p3, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    .line 116
    iput-object v8, p3, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    .line 117
    return-void
.end method

.method public constructor <init>(ILcom/dropbox/android/filemanager/m;Ldbxyzptlk/l/o;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/dropbox/android/filemanager/p;

    invoke-direct {v0, p0, v2}, Lcom/dropbox/android/filemanager/p;-><init>(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/h;)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->c:Lcom/dropbox/android/filemanager/p;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    .line 66
    iput-boolean v8, p0, Lcom/dropbox/android/filemanager/g;->f:Z

    .line 93
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->i:Ljava/util/concurrent/BlockingQueue;

    .line 94
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/dropbox/android/filemanager/g;->i:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcom/dropbox/android/filemanager/o;

    invoke-direct {v7, v2}, Lcom/dropbox/android/filemanager/o;-><init>(Lcom/dropbox/android/filemanager/h;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 103
    iput v8, p0, Lcom/dropbox/android/filemanager/g;->m:I

    .line 106
    new-instance v0, Lcom/dropbox/android/util/G;

    const/16 v1, 0x4b

    invoke-direct {v0, p1, v1}, Lcom/dropbox/android/util/G;-><init>(II)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    .line 107
    iput-object p2, p0, Lcom/dropbox/android/filemanager/g;->e:Lcom/dropbox/android/filemanager/m;

    .line 108
    iput-object p3, p0, Lcom/dropbox/android/filemanager/g;->g:Ldbxyzptlk/l/o;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/g;)V
    .registers 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->d()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/filemanager/g;->a(Lcom/dropbox/android/filemanager/n;I)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;Landroid/util/Pair;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/g;->a(Lcom/dropbox/android/filemanager/n;Landroid/util/Pair;I)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/g;->b(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/g;->b(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    return-void
.end method

.method private a(Lcom/dropbox/android/filemanager/n;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/filemanager/g;->h:Lcom/dropbox/android/taskqueue/v;

    iget-object v2, p1, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/n;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/g;->g:Ldbxyzptlk/l/o;

    iget-object v5, p1, Lcom/dropbox/android/filemanager/n;->c:Landroid/content/res/Resources;

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;Landroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->c:Lcom/dropbox/android/filemanager/p;

    new-instance v2, Lcom/dropbox/android/filemanager/j;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/dropbox/android/filemanager/j;-><init>(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;Landroid/util/Pair;I)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/filemanager/p;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method private a(Lcom/dropbox/android/filemanager/n;Landroid/util/Pair;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/taskqueue/D;

    iget-boolean v0, v0, Lcom/dropbox/android/taskqueue/D;->b:Z

    if-nez v0, :cond_1c

    .line 282
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/E;)V

    .line 283
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1c
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/g;->f:Z

    if-nez v0, :cond_74

    .line 287
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_7d

    .line 288
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_75

    .line 289
    new-instance v1, Lcom/dropbox/android/util/D;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/dropbox/android/util/D;-><init>(Landroid/graphics/Bitmap;)V

    .line 290
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p3, v1}, Lcom/dropbox/android/util/G;->a(ILcom/dropbox/android/util/D;)V

    .line 291
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 292
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/q;

    .line 293
    const/4 v3, 0x0

    invoke-interface {v0, p3, v1, v3}, Lcom/dropbox/android/filemanager/q;->a(ILcom/dropbox/android/util/D;Z)V

    goto :goto_54

    .line 295
    :cond_65
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_6e
    invoke-virtual {v1}, Lcom/dropbox/android/util/D;->b()V

    .line 298
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->c()V

    .line 307
    :cond_74
    :goto_74
    return-void

    .line 300
    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected Bitmap from cache."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_7d
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p3}, Lcom/dropbox/android/util/G;->a(I)V

    .line 304
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->c()V

    goto :goto_74
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    iget v1, p0, Lcom/dropbox/android/filemanager/g;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dropbox/android/filemanager/g;->m:I

    .line 164
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    if-eqz v1, :cond_2e

    .line 165
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 167
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/D;

    invoke-virtual {v1, p2, v0}, Lcom/dropbox/android/util/G;->a(ILcom/dropbox/android/util/D;)V

    .line 168
    const/4 v0, 0x1

    .line 170
    :cond_21
    iget v1, p0, Lcom/dropbox/android/filemanager/g;->m:I

    iget-object v2, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v1, v2, :cond_2e

    .line 171
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->b()V

    .line 174
    :cond_2e
    return v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_21

    .line 154
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/D;

    .line 155
    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    goto :goto_e

    .line 157
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    .line 159
    :cond_21
    return-void
.end method

.method private b(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->g:Ldbxyzptlk/l/o;

    if-ne p2, v0, :cond_1c

    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 360
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/E;)V

    .line 363
    :cond_1c
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->c()V

    .line 364
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->g:Ldbxyzptlk/l/o;

    if-ne p3, v0, :cond_57

    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 337
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 338
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    .line 339
    invoke-virtual {v0, p1, p0}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/E;)V

    .line 341
    iget-boolean v1, p0, Lcom/dropbox/android/filemanager/g;->f:Z

    if-nez v1, :cond_57

    .line 342
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->e:Lcom/dropbox/android/filemanager/m;

    invoke-interface {v1, v6}, Lcom/dropbox/android/filemanager/m;->a(I)Lcom/dropbox/android/filemanager/n;

    move-result-object v2

    .line 343
    sget-object v1, Lcom/dropbox/android/filemanager/g;->h:Lcom/dropbox/android/taskqueue/v;

    iget-object v5, v2, Lcom/dropbox/android/filemanager/n;->c:Landroid/content/res/Resources;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;Landroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object v0

    .line 345
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_57

    .line 346
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5b

    .line 347
    new-instance v1, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->c:Lcom/dropbox/android/filemanager/p;

    invoke-virtual {v0, v6, v1}, Lcom/dropbox/android/filemanager/p;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    :cond_57
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->c()V

    .line 356
    return-void

    .line 350
    :cond_5b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected Bitmap from cache."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->c:Lcom/dropbox/android/filemanager/p;

    new-instance v1, Lcom/dropbox/android/filemanager/h;

    invoke-direct {v1, p0}, Lcom/dropbox/android/filemanager/h;-><init>(Lcom/dropbox/android/filemanager/g;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/p;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/g;->f:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2f

    .line 238
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Lcom/dropbox/android/util/G;->b()I

    move-result v0

    .line 240
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    .line 241
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/util/G;->a(I)V

    .line 243
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->e:Lcom/dropbox/android/filemanager/m;

    invoke-interface {v1, v0}, Lcom/dropbox/android/filemanager/m;->a(I)Lcom/dropbox/android/filemanager/n;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_58

    .line 246
    iget-object v2, v1, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/dropbox/android/filemanager/g;->a(Ljava/lang/String;I)Z

    move-result v2

    .line 247
    if-eqz v2, :cond_30

    .line 248
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->c()V

    .line 266
    :cond_2f
    :goto_2f
    return-void

    .line 252
    :cond_30
    iget-object v2, p0, Lcom/dropbox/android/filemanager/g;->d:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v2

    iget-object v3, v1, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 255
    iget-object v2, p0, Lcom/dropbox/android/filemanager/g;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/dropbox/android/filemanager/i;

    invoke-direct {v3, p0, v1, v0}, Lcom/dropbox/android/filemanager/i;-><init>(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 262
    :cond_58
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->c()V

    goto :goto_2f
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/filemanager/q;)Lcom/dropbox/android/util/D;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/G;->c(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 190
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/G;->b(I)Lcom/dropbox/android/util/D;

    move-result-object v0

    .line 197
    :goto_e
    return-object v0

    .line 192
    :cond_f
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->e:Lcom/dropbox/android/filemanager/m;

    invoke-interface {v0, p1}, Lcom/dropbox/android/filemanager/m;->a(I)Lcom/dropbox/android/filemanager/n;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/dropbox/android/filemanager/g;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_24

    .line 194
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/G;->b(I)Lcom/dropbox/android/util/D;

    move-result-object v0

    goto :goto_e

    .line 196
    :cond_24
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/filemanager/g;->b(ILcom/dropbox/android/filemanager/q;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a()V
    .registers 6

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/filemanager/g;->f:Z

    .line 134
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->b()V

    .line 135
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Lcom/dropbox/android/util/G;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    .line 137
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    iget-object v3, p0, Lcom/dropbox/android/filemanager/g;->l:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/g;->e:Lcom/dropbox/android/filemanager/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Lcom/dropbox/android/filemanager/m;->a(I)Lcom/dropbox/android/filemanager/n;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 141
    :cond_47
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Lcom/dropbox/android/util/G;->a()V

    .line 142
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 143
    return-void
.end method

.method public final a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/android/util/G;->a(II)V

    .line 184
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/g;->c()V

    .line 185
    return-void
.end method

.method public final a(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->c:Lcom/dropbox/android/filemanager/p;

    new-instance v1, Lcom/dropbox/android/filemanager/l;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/l;-><init>(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/p;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->c:Lcom/dropbox/android/filemanager/p;

    new-instance v1, Lcom/dropbox/android/filemanager/k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/k;-><init>(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/p;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method protected final b(ILcom/dropbox/android/filemanager/q;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 205
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :goto_1b
    return-void

    .line 207
    :cond_1c
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 208
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b
.end method

.method public final c(ILcom/dropbox/android/filemanager/q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 215
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 218
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_2a
    return-void
.end method

.method protected final finalize()V
    .registers 2

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/android/filemanager/g;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    return-void

    .line 89
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
