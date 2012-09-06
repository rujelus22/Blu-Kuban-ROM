.class public LF/b;
.super LF/h;
.source "SourceFile"


# instance fields
.field private final a:LF/a;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(LF/a;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, LF/h;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LF/b;->b:Ljava/util/Map;

    .line 40
    iput-object p1, p0, LF/b;->a:LF/a;

    .line 41
    return-void
.end method

.method public constructor <init>(LF/a;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p2, p3}, LF/h;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 29
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LF/b;->b:Ljava/util/Map;

    .line 53
    iput-object p1, p0, LF/b;->a:LF/a;

    .line 54
    return-void
.end method

.method static synthetic a(LF/b;)LF/a;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, LF/b;->a:LF/a;

    return-object v0
.end method

.method static synthetic a(LF/b;Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, LF/b;->c(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method static synthetic b(LF/b;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, LF/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, LF/h;->b(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LF/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-super {p0, v0}, LF/h;->a(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, LF/b;->a:LF/a;

    invoke-virtual {v0}, LF/a;->b()J

    move-result-wide v6

    .line 98
    cmp-long v0, p2, v6

    if-gtz v0, :cond_f

    .line 99
    invoke-virtual {p0, p1}, LF/b;->b(Ljava/lang/Runnable;)Z

    move-result v0

    .line 103
    :goto_e
    return v0

    .line 101
    :cond_f
    new-instance v0, LF/d;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, LF/d;-><init>(LF/b;JLjava/lang/Runnable;LF/c;)V

    .line 102
    iget-object v1, p0, LF/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sub-long v1, p2, v6

    long-to-double v1, v1

    iget-object v3, p0, LF/b;->a:LF/a;

    iget-wide v3, v3, LF/a;->a:D

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-super {p0, v0, v1, v2}, LF/h;->b(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_e
.end method

.method public b(Ljava/lang/Runnable;J)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, LF/b;->a:LF/a;

    invoke-virtual {v0}, LF/a;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 110
    invoke-virtual {p0, p1, v0, v1}, LF/b;->a(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
