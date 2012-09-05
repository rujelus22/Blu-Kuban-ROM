.class public LF/t;
.super Ljava/lang/Object;


# instance fields
.field protected final a:LF/o;

.field private final b:LF/x;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(LF/o;LF/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LF/t;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, LF/t;->a:LF/o;

    iput-object p2, p0, LF/t;->b:LF/x;

    invoke-direct {p0}, LF/t;->e()V

    return-void
.end method

.method public constructor <init>(LF/x;)V
    .registers 4

    new-instance v0, LF/p;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LF/p;-><init>(LF/x;Z)V

    invoke-direct {p0, v0, p1}, LF/t;-><init>(LF/o;LF/x;)V

    return-void
.end method

.method static synthetic a(LF/t;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, LF/t;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, LF/t;->a:LF/o;

    invoke-interface {v0}, LF/o;->a()LI/i;

    move-result-object v0

    new-instance v1, LF/v;

    invoke-direct {v1, p0}, LF/v;-><init>(LF/t;)V

    invoke-interface {v0, v1}, LI/i;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, LF/t;->a:LF/o;

    invoke-interface {v0}, LF/o;->a()LI/i;

    move-result-object v0

    new-instance v1, LF/w;

    invoke-direct {v1, p0}, LF/w;-><init>(LF/t;)V

    invoke-interface {v0, v1}, LI/i;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, LF/t;->b:LF/x;

    invoke-interface {v0}, LF/x;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, LF/t;->b:LF/x;

    iget-object v3, p0, LF/t;->a:LF/o;

    invoke-interface {v2, v0, v3}, LF/x;->a(Ljava/lang/String;LF/o;)LF/b;

    move-result-object v2

    iget-object v3, p0, LF/t;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, LF/t;->b:LF/x;

    invoke-interface {v3, v0}, LF/x;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, LF/t;->a:LF/o;

    invoke-interface {v4, v0, v2}, LF/o;->a(Ljava/lang/String;LF/T;)V

    goto :goto_2d

    :cond_3f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-direct {p0}, LF/t;->c()V

    iget-object v0, p0, LF/t;->a:LF/o;

    invoke-interface {v0}, LF/o;->a()LI/i;

    move-result-object v0

    new-instance v1, LF/u;

    invoke-direct {v1, p0}, LF/u;-><init>(LF/t;)V

    invoke-interface {v0, v1}, LI/i;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(LF/T;)V
    .registers 4

    iget-object v0, p0, LF/t;->a:LF/o;

    const-string v1, "integrated_location_provider"

    invoke-interface {v0, v1, p1}, LF/o;->a(Ljava/lang/String;LF/T;)V

    return-void
.end method

.method a(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, LF/t;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/b;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    if-eqz p2, :cond_13

    invoke-virtual {v0}, LF/b;->b()V

    :goto_11
    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, LF/b;->d()V

    goto :goto_11
.end method

.method public b()V
    .registers 2

    invoke-direct {p0}, LF/t;->d()V

    iget-object v0, p0, LF/t;->a:LF/o;

    invoke-interface {v0}, LF/o;->b()V

    return-void
.end method
