.class public LI/b;
.super LI/h;


# instance fields
.field private final a:LI/a;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(LI/a;)V
    .registers 3

    invoke-direct {p0}, LI/h;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LI/b;->b:Ljava/util/Map;

    iput-object p1, p0, LI/b;->a:LI/a;

    return-void
.end method

.method public constructor <init>(LI/a;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 5

    invoke-direct {p0, p2, p3}, LI/h;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LI/b;->b:Ljava/util/Map;

    iput-object p1, p0, LI/b;->a:LI/a;

    return-void
.end method

.method static synthetic a(LI/b;)LI/a;
    .registers 2

    iget-object v0, p0, LI/b;->a:LI/a;

    return-object v0
.end method

.method static synthetic a(LI/b;Ljava/lang/Runnable;J)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, LI/b;->c(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method static synthetic b(LI/b;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, LI/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/lang/Runnable;J)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, LI/h;->b(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, LI/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-super {p0, v0}, LI/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .registers 12

    iget-object v0, p0, LI/b;->a:LI/a;

    invoke-virtual {v0}, LI/a;->b()J

    move-result-wide v6

    cmp-long v0, p2, v6

    if-gtz v0, :cond_f

    invoke-virtual {p0, p1}, LI/b;->b(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    new-instance v0, LI/d;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, LI/d;-><init>(LI/b;JLjava/lang/Runnable;LI/c;)V

    iget-object v1, p0, LI/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long v1, p2, v6

    long-to-double v1, v1

    iget-object v3, p0, LI/b;->a:LI/a;

    iget-wide v3, v3, LI/a;->a:D

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-super {p0, v0, v1, v2}, LI/h;->b(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_e
.end method

.method public b(Ljava/lang/Runnable;J)Z
    .registers 6

    iget-object v0, p0, LI/b;->a:LI/a;

    invoke-virtual {v0}, LI/a;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, LI/b;->a(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
