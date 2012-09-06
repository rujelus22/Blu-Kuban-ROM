.class public LmA;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Lmz;


# instance fields
.field private final a:LIG;

.field private a:LaeJ;

.field private final a:Landroid/os/Handler;

.field private final a:LdE;

.field private final a:Ljava/lang/Object;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "LmN;",
            ">;"
        }
    .end annotation
.end field

.field private a:LmL;

.field private a:Lmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LIG;LdE;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LmA;->a:Landroid/os/Handler;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LmA;->a:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LmA;->a:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LmA;->b:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LmA;->c:Ljava/lang/Object;

    .line 126
    sget-object v0, LmL;->a:LmL;

    iput-object v0, p0, LmA;->a:LmL;

    .line 132
    iput-object p1, p0, LmA;->a:Ljava/lang/String;

    .line 133
    iput-object p2, p0, LmA;->b:Ljava/lang/String;

    .line 134
    iput-object p3, p0, LmA;->a:LIG;

    .line 135
    iput-object p4, p0, LmA;->a:LdE;

    .line 136
    iput-object p5, p0, LmA;->c:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, LmA;->a:Lmv;

    .line 138
    return-void
.end method

.method static synthetic a(LmA;)LIG;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->a:LIG;

    return-object v0
.end method

.method static synthetic a(LmA;)LaeJ;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->a:LaeJ;

    return-object v0
.end method

.method static synthetic a(LmA;)LdE;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->a:LdE;

    return-object v0
.end method

.method static synthetic a(LmA;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_11

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 226
    :cond_11
    return-object p1
.end method

.method static synthetic a(LmA;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LmA;)Ljava/util/TreeSet;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->a:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic a(LmA;Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, LmA;->a:Ljava/util/TreeSet;

    return-object p1
.end method

.method static synthetic a(LmA;)LmL;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->a:LmL;

    return-object v0
.end method

.method static synthetic a(LmA;LmL;)LmL;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, LmA;->a:LmL;

    return-object p1
.end method

.method private a(Lna;)LmN;
    .registers 3
    .parameter

    .prologue
    .line 278
    instance-of v0, p1, LmN;

    if-eqz v0, :cond_7

    .line 279
    check-cast p1, LmN;

    .line 281
    :goto_6
    return-object p1

    :cond_7
    invoke-interface {p1}, Lna;->a()Lna;

    move-result-object v0

    check-cast v0, LmN;

    move-object p1, v0

    goto :goto_6
.end method

.method private a(Ljava/lang/String;)Lmu;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmu",
            "<",
            "Lafc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lmv;

    invoke-direct {v0}, Lmv;-><init>()V

    .line 421
    new-instance v1, LmE;

    invoke-direct {v1, p0, v0}, LmE;-><init>(LmA;Lmv;)V

    invoke-direct {p0, v0, p1, v1}, LmA;->a(Lmv;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 434
    return-object v0
.end method

.method private declared-synchronized a()V
    .registers 5

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, LmA;->a:Ljava/util/Set;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    .line 271
    :try_start_4
    iget-object v0, p0, LmA;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 272
    iget-object v3, p0, LmA;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 274
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 270
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1c

    .line 275
    monitor-exit p0

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 145
    const-string v0, "can\'t refresh API with null OAuth token"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, LmA;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_8
    invoke-static {}, LacM;->a()Lado;

    move-result-object v0

    .line 149
    new-instance v2, LadU;

    invoke-direct {v2}, LadU;-><init>()V

    invoke-static {v0, v2}, LaeJ;->a(Lado;LadN;)LaeK;

    move-result-object v0

    const-class v2, LmA;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LaeK;->a(Ljava/lang/String;)LaeK;

    move-result-object v0

    new-instance v2, LmK;

    invoke-direct {v2, p1, p2}, LmK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LaeK;->a(LadJ;)LaeK;

    move-result-object v0

    invoke-virtual {v0}, LaeK;->a()LaeJ;

    move-result-object v0

    iput-object v0, p0, LmA;->a:LaeJ;

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private a(Ljava/lang/String;Lmv;Ljava/util/TreeSet;I)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmv",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/TreeSet",
            "<",
            "LmN;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 330
    invoke-direct {p0, p1}, LmA;->a(Ljava/lang/String;)Lmu;

    move-result-object v2

    .line 331
    iget-object v6, p0, LmA;->a:Landroid/os/Handler;

    new-instance v0, LmD;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, LmD;-><init>(LmA;Lmu;Ljava/util/TreeSet;Lmv;I)V

    invoke-interface {v2, v6, v0}, Lmu;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method static synthetic a(LmA;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, LmA;->b()V

    return-void
.end method

.method static synthetic a(LmA;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, LmA;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(LmA;Ljava/lang/String;Lmv;Ljava/util/TreeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, LmA;->a(Ljava/lang/String;Lmv;Ljava/util/TreeSet;I)V

    return-void
.end method

.method private a(Lmv;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmv",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, LmA;->a(Lmv;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method private a(Lmv;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmv",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "Must be given a future to fail if we can\'t get token"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "Task must be non-null"

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, LmB;

    invoke-direct {v0, p0, p2, p3, p1}, LmB;-><init>(LmA;Ljava/lang/String;Ljava/lang/Runnable;Lmv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, LmB;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method static synthetic b(LmA;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(LmA;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 304
    iget-object v1, p0, LmA;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_4
    iget-object v2, p0, LmA;->a:LmL;

    sget-object v3, LmL;->c:LmL;

    if-ne v2, v3, :cond_2f

    :goto_a
    const-string v2, "restartRefresh called in wrong state"

    invoke-static {v0, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 310
    iget-object v0, p0, LmA;->a:LdE;

    iget-object v2, p0, LmA;->a:Lmv;

    invoke-virtual {v0, v2}, LdE;->b(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, LmA;->a:LdE;

    iget-object v2, p0, LmA;->a:Lmv;

    invoke-virtual {v0, v2}, LdE;->a(Ljava/lang/Object;)V

    .line 312
    sget-object v0, LmL;->b:LmL;

    iput-object v0, p0, LmA;->a:LmL;

    .line 313
    const/4 v0, 0x0

    iget-object v2, p0, LmA;->a:Lmv;

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, LmA;->a(Ljava/lang/String;Lmv;Ljava/util/TreeSet;I)V

    .line 314
    monitor-exit v1

    .line 315
    return-void

    .line 305
    :cond_2f
    const/4 v0, 0x0

    goto :goto_a

    .line 314
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v0
.end method

.method static synthetic b(LmA;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, LmA;->a()V

    return-void
.end method

.method static synthetic c(LmA;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(LmA;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LmA;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, LmA;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_3
    iget-object v0, p0, LmA;->a:Ljava/util/TreeSet;

    if-eqz v0, :cond_14

    .line 442
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, LmA;->a:Ljava/util/TreeSet;

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    .line 444
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_13

    .line 446
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public a()Lmu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmu",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v1, p0, LmA;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_3
    iget-object v0, p0, LmA;->a:LmL;

    sget-object v2, LmL;->a:LmL;

    if-ne v0, v2, :cond_27

    .line 292
    new-instance v0, Lmv;

    invoke-direct {v0}, Lmv;-><init>()V

    iput-object v0, p0, LmA;->a:Lmv;

    .line 293
    iget-object v0, p0, LmA;->a:LdE;

    iget-object v2, p0, LmA;->a:Lmv;

    invoke-virtual {v0, v2}, LdE;->a(Ljava/lang/Object;)V

    .line 294
    sget-object v0, LmL;->b:LmL;

    iput-object v0, p0, LmA;->a:LmL;

    .line 295
    const/4 v0, 0x0

    iget-object v2, p0, LmA;->a:Lmv;

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, LmA;->a(Ljava/lang/String;Lmv;Ljava/util/TreeSet;I)V

    .line 299
    :cond_27
    iget-object v0, p0, LmA;->a:Lmv;

    monitor-exit v1

    return-object v0

    .line 300
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public a(Landroid/net/Uri;)Lmu;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lmu",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Lmv;

    invoke-direct {v0}, Lmv;-><init>()V

    .line 771
    if-nez p1, :cond_12

    .line 772
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null Uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmv;->a(Ljava/lang/Throwable;)V

    .line 800
    :goto_11
    return-object v0

    .line 776
    :cond_12
    new-instance v1, LmC;

    invoke-direct {v1, p0, p1, v0}, LmC;-><init>(LmA;Landroid/net/Uri;Lmv;)V

    invoke-direct {p0, v0, v1}, LmA;->a(Lmv;Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmu;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmu",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    const/16 v0, 0xfa0

    invoke-direct {p0, p3, v0}, LmA;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 453
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, LmA;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 454
    new-instance v5, Lmv;

    invoke-direct {v5}, Lmv;-><init>()V

    .line 455
    new-instance v0, LmF;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, LmF;-><init>(LmA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmv;)V

    invoke-direct {p0, v5, v0}, LmA;->a(Lmv;Ljava/lang/Runnable;)V

    .line 499
    return-object v5
.end method

.method public a(Lna;)Lmu;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lna;",
            ")",
            "Lmu",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Lmv;

    invoke-direct {v0}, Lmv;-><init>()V

    .line 673
    check-cast p1, LmN;

    .line 674
    invoke-virtual {p1}, LmN;->a()Ljava/lang/String;

    move-result-object v1

    .line 676
    new-instance v2, LmJ;

    invoke-direct {v2, p0, v1, v0, p1}, LmJ;-><init>(LmA;Ljava/lang/String;Lmv;LmN;)V

    invoke-direct {p0, v0, v2}, LmA;->a(Lmv;Ljava/lang/Runnable;)V

    .line 716
    return-object v0
.end method

.method public a(Lna;Ljava/lang/String;)Lmu;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lna;",
            "Ljava/lang/String;",
            ")",
            "Lmu",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    const/16 v0, 0x800

    invoke-direct {p0, p2, v0}, LmA;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 506
    new-instance v5, Lmv;

    invoke-direct {v5}, Lmv;-><init>()V

    move-object v4, p1

    .line 507
    check-cast v4, LmN;

    .line 508
    invoke-virtual {v4}, LmN;->a()Ljava/lang/String;

    move-result-object v3

    .line 510
    new-instance v0, LmG;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LmG;-><init>(LmA;Ljava/lang/String;Ljava/lang/String;LmN;Lmv;)V

    invoke-direct {p0, v5, v0}, LmA;->a(Lmv;Ljava/lang/Runnable;)V

    .line 554
    return-object v5
.end method

.method public a(Ljava/lang/Runnable;)Z
    .registers 5
    .parameter

    .prologue
    .line 245
    iget-object v1, p0, LmA;->a:Ljava/util/Set;

    monitor-enter v1

    .line 246
    :try_start_3
    iget-object v0, p0, LmA;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 247
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    .line 248
    iget-object v1, p0, LmA;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_d
    iget-object v2, p0, LmA;->a:Ljava/util/TreeSet;

    if-eqz v2, :cond_1b

    .line 250
    iget-object v2, p0, LmA;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    :goto_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1f

    .line 256
    return v0

    .line 247
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 252
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, LmA;->a()Lmu;

    goto :goto_16

    .line 254
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, LmA;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, LmA;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 239
    :goto_11
    return v0

    .line 238
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b(Lna;)Lmu;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lna;",
            ")",
            "Lmu",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 623
    new-instance v0, Lmv;

    invoke-direct {v0}, Lmv;-><init>()V

    .line 624
    invoke-direct {p0, p1}, LmA;->a(Lna;)LmN;

    move-result-object v1

    .line 626
    new-instance v2, LmI;

    invoke-direct {v2, p0, v1, p1, v0}, LmI;-><init>(LmA;LmN;Lna;Lmv;)V

    invoke-direct {p0, v0, v2}, LmA;->a(Lmv;Ljava/lang/Runnable;)V

    .line 667
    return-object v0
.end method

.method public b(Lna;Ljava/lang/String;)Lmu;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lna;",
            "Ljava/lang/String;",
            ")",
            "Lmu",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    const/16 v0, 0x800

    invoke-direct {p0, p2, v0}, LmA;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 561
    new-instance v5, Lmv;

    invoke-direct {v5}, Lmv;-><init>()V

    .line 562
    invoke-direct {p0, p1}, LmA;->a(Lna;)LmN;

    move-result-object v4

    .line 564
    new-instance v0, LmH;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LmH;-><init>(LmA;Ljava/lang/String;Lna;LmN;Lmv;)V

    invoke-direct {p0, v5, v0}, LmA;->a(Lmv;Ljava/lang/Runnable;)V

    .line 618
    return-object v5
.end method

.method public b(Ljava/lang/Runnable;)Z
    .registers 4
    .parameter

    .prologue
    .line 261
    iget-object v1, p0, LmA;->a:Ljava/util/Set;

    monitor-enter v1

    .line 262
    :try_start_3
    iget-object v0, p0, LmA;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 263
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
