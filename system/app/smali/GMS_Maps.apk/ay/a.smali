.class public Lay/a;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lay/n;

.field private static final i:Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/Hashtable;

.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private c:Ljava/util/Vector;

.field private volatile d:Z

.field private final f:Lcom/google/googlenav/android/ac;

.field private final g:Lap/c;

.field private final h:Ljava/util/Hashtable;

.field private final j:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lay/n;

    new-instance v6, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v6, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lay/n;-><init>(Lah/f;Lah/f;Lah/f;Lah/f;Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v0, Lay/a;->e:Lay/n;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lay/a;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/ac;Lap/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lay/a;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lay/a;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lay/a;->h:Ljava/util/Hashtable;

    iput-object p1, p0, Lay/a;->f:Lcom/google/googlenav/android/ac;

    iput-object p2, p0, Lay/a;->g:Lap/c;

    new-instance v0, LK/bW;

    invoke-direct {v0}, LK/bW;-><init>()V

    invoke-virtual {v0}, LK/bW;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lay/a;->j:Ljava/util/Vector;

    invoke-direct {p0}, Lay/a;->e()V

    return-void
.end method

.method private a(Lah/f;Lax/bJ;)V
    .registers 7

    invoke-static {p1}, Lah/j;->c(Lah/f;)[B

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lax/bG;

    iget-object v3, p0, Lay/a;->f:Lcom/google/googlenav/android/ac;

    invoke-direct {v2, v0, v3, p2}, Lax/bG;-><init>([BLcom/google/googlenav/android/ac;Lax/bJ;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method static synthetic a(Lay/a;)V
    .registers 1

    invoke-direct {p0}, Lay/a;->c()V

    return-void
.end method

.method static synthetic a(Lay/a;Lay/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lay/a;->a(Lay/n;)V

    return-void
.end method

.method static synthetic a(Lay/a;Lay/q;)V
    .registers 2

    invoke-direct {p0, p1}, Lay/a;->c(Lay/q;)V

    return-void
.end method

.method static synthetic a(Lay/a;Ljava/lang/Long;)V
    .registers 2

    invoke-direct {p0, p1}, Lay/a;->b(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic a(Lay/a;Ljava/lang/Long;Lay/n;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lay/a;->a(Ljava/lang/Long;Lay/n;)V

    return-void
.end method

.method static synthetic a(Lay/a;Ljava/util/Vector;)V
    .registers 2

    invoke-direct {p0, p1}, Lay/a;->b(Ljava/util/Vector;)V

    return-void
.end method

.method private a(Lay/n;)V
    .registers 6

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lay/k;

    iget-object v2, p0, Lay/a;->g:Lap/c;

    new-instance v3, Lay/m;

    invoke-direct {v3, p0}, Lay/m;-><init>(Lay/a;)V

    invoke-direct {v1, v2, v0, v3}, Lay/k;-><init>(Lap/c;Ljava/util/Vector;Lay/l;)V

    invoke-virtual {v1}, Lay/k;->g()V

    return-void
.end method

.method private a(Ljava/lang/Long;Lay/n;)V
    .registers 5

    invoke-virtual {p2}, Lay/n;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_b
    iget-object v0, p0, Lay/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    iget-object v0, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Lay/a;->e:Lay/n;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private a(Ljava/util/Vector;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_15

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/q;

    invoke-interface {v0}, Lay/q;->aa_()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_15
    return-void
.end method

.method static synthetic a(Lay/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lay/a;->d:Z

    return p1
.end method

.method private static a(Lay/n;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lay/n;->b()Lay/o;

    move-result-object v2

    invoke-virtual {v2}, Lay/o;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    :cond_e
    if-nez p1, :cond_11

    move v0, v1

    :cond_11
    :goto_11
    return v0

    :cond_12
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lay/n;->b()Lay/o;

    move-result-object v2

    invoke-virtual {v2}, Lay/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method static synthetic b(Lay/a;)Lap/c;
    .registers 2

    iget-object v0, p0, Lay/a;->g:Lap/c;

    return-object v0
.end method

.method static synthetic b()Lay/n;
    .registers 1

    sget-object v0, Lay/a;->e:Lay/n;

    return-object v0
.end method

.method static synthetic b(Lay/a;Ljava/util/Vector;)V
    .registers 2

    invoke-direct {p0, p1}, Lay/a;->a(Ljava/util/Vector;)V

    return-void
.end method

.method private b(Ljava/lang/Long;)V
    .registers 6

    iget-object v0, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/n;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lay/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lay/a;->e:Lay/n;

    if-eq v0, v1, :cond_a

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHOTO_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lay/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lay/a;->d()V

    goto :goto_a
.end method

.method private b(Ljava/util/Vector;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1b

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/n;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lay/n;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lay/a;->a(Ljava/lang/Long;Lay/n;)V

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1b
    return-void
.end method

.method private b(Ljava/util/Vector;Lay/q;)Z
    .registers 11

    const/4 v2, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_6f

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/o;

    iget-object v1, p0, Lay/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lay/n;

    if-nez v1, :cond_56

    iget-object v1, p0, Lay/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lay/o;

    if-eqz v1, :cond_52

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_43
    iget-object v1, p0, Lay/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v0

    sget-object v7, Lay/a;->i:Ljava/lang/Object;

    invoke-virtual {v1, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    :goto_4e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    :cond_52
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_43

    :cond_56
    invoke-virtual {v0}, Lay/o;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lay/a;->a(Lay/n;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lay/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v0

    sget-object v7, Lay/a;->i:Ljava/lang/Object;

    invoke-virtual {v1, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_6f
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    :cond_7b
    const/4 v0, 0x1

    :goto_7c
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_91

    new-instance v1, Lay/i;

    iget-object v2, p0, Lay/a;->g:Lap/c;

    new-instance v3, Lay/b;

    invoke-direct {v3, p0, p2}, Lay/b;-><init>(Lay/a;Lay/q;)V

    invoke-direct {v1, v2, v5, p0, v3}, Lay/i;-><init>(Lap/c;Ljava/util/Vector;Lay/a;Lay/j;)V

    invoke-virtual {v1}, Lay/i;->g()V

    :cond_91
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a8

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lax/aQ;

    new-instance v3, Lay/c;

    invoke-direct {v3, p0, p2}, Lay/c;-><init>(Lay/a;Lay/q;)V

    invoke-direct {v2, v4, v3}, Lax/aQ;-><init>(Ljava/util/Vector;Lax/aR;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    :cond_a8
    return v0

    :cond_a9
    move v0, v2

    goto :goto_7c
.end method

.method static synthetic c(Lay/a;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lay/a;->j:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic c(Lay/a;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2

    iput-object p1, p0, Lay/a;->c:Ljava/util/Vector;

    return-object p1
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lay/a;->f:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lay/a;->f:Lcom/google/googlenav/android/ac;

    new-instance v2, Lay/e;

    invoke-direct {v2, p0}, Lay/e;-><init>(Lay/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lay/a;->j:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lay/a;->a(Ljava/util/Vector;)V

    goto :goto_f
.end method

.method private c(Lay/q;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    if-eqz p1, :cond_1a

    iget-object v1, p0, Lay/a;->f:Lcom/google/googlenav/android/ac;

    if-eqz v1, :cond_1a

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lay/a;->f:Lcom/google/googlenav/android/ac;

    new-instance v2, Lay/d;

    invoke-direct {v2, p0, v0}, Lay/d;-><init>(Lay/a;Ljava/util/Vector;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    if-eqz p1, :cond_19

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lay/a;->a(Ljava/util/Vector;)V

    goto :goto_19
.end method

.method private d()V
    .registers 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lay/a;->a:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lay/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1c

    new-instance v1, Lay/f;

    iget-object v2, p0, Lay/a;->g:Lap/c;

    invoke-direct {v1, p0, v2, v0}, Lay/f;-><init>(Lay/a;Lap/c;Ljava/util/Vector;)V

    invoke-virtual {v1}, Lay/f;->g()V

    return-void
.end method

.method static synthetic d(Lay/a;)V
    .registers 1

    invoke-direct {p0}, Lay/a;->d()V

    return-void
.end method

.method private e()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->M()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lay/a;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lay/a;->d:Z

    :goto_10
    return-void

    :cond_11
    new-instance v0, Lay/g;

    iget-object v1, p0, Lay/a;->g:Lap/c;

    invoke-direct {v0, p0, v1}, Lay/g;-><init>(Lay/a;Lap/c;)V

    invoke-virtual {v0}, Lay/g;->g()V

    goto :goto_10
.end method

.method static synthetic e(Lay/a;)V
    .registers 1

    invoke-direct {p0}, Lay/a;->f()V

    return-void
.end method

.method static synthetic f(Lay/a;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lay/a;->c:Ljava/util/Vector;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lay/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    const-string v1, "PHOTO_"

    invoke-interface {v0, v1}, Lak/m;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/n;

    sget-object v3, Lay/a;->e:Lay/n;

    if-eq v0, v3, :cond_24

    invoke-virtual {v0}, Lay/n;->i()I

    move-result v0

    add-int/2addr v0, v1

    :goto_21
    move v1, v0

    goto :goto_c

    :cond_23
    return v1

    :cond_24
    move v0, v1

    goto :goto_21
.end method

.method public a(Lcom/google/googlenav/ui/aj;)Lah/f;
    .registers 4

    check-cast p1, LaX/j;

    invoke-virtual {p1}, LaX/j;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lay/a;->a(Ljava/lang/Long;)Lay/n;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v1, Lay/a;->e:Lay/n;

    if-eq v0, v1, :cond_17

    invoke-virtual {p1}, LaX/j;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0

    :pswitch_19
    invoke-virtual {v0}, Lay/n;->f()Lah/f;

    move-result-object v0

    goto :goto_18

    :pswitch_1e
    invoke-virtual {v0}, Lay/n;->e()Lah/f;

    move-result-object v0

    goto :goto_18

    :pswitch_23
    invoke-virtual {v0}, Lay/n;->d()Lah/f;

    move-result-object v0

    goto :goto_18

    :pswitch_28
    invoke-virtual {v0}, Lay/n;->c()Lah/f;

    move-result-object v0

    goto :goto_18

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
    .end packed-switch
.end method

.method public a(Ljava/lang/Long;)Lay/n;
    .registers 3

    iget-object v0, p0, Lay/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/n;

    return-object v0
.end method

.method public a(Lay/q;)V
    .registers 3

    iget-object v0, p0, Lay/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aj;Lah/f;Ljava/lang/String;Lax/bK;)V
    .registers 12

    check-cast p1, LaX/j;

    invoke-virtual {p1}, LaX/j;->a()Ljava/lang/Long;

    move-result-object v2

    if-nez p2, :cond_c

    invoke-direct {p0, v2}, Lay/a;->b(Ljava/lang/Long;)V

    :goto_b
    return-void

    :cond_c
    new-instance v0, Lay/h;

    const/4 v6, 0x0

    move-object v1, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lay/h;-><init>(Lax/bK;Ljava/lang/Long;Ljava/lang/String;Lah/f;Lay/a;Lay/b;)V

    invoke-direct {p0, p2, v0}, Lay/a;->a(Lah/f;Lax/bJ;)V

    goto :goto_b
.end method

.method public a(Ljava/util/Vector;Lay/q;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lay/a;->d:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lay/a;->c:Ljava/util/Vector;

    invoke-static {p1, v0, v1}, Lar/a;->a(Ljava/util/List;ILjava/util/List;)V

    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1, p2}, Lay/a;->b(Ljava/util/Vector;Lay/q;)Z

    move-result v0

    goto :goto_a
.end method

.method public b(Lay/q;)V
    .registers 3

    iget-object v0, p0, Lay/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method
