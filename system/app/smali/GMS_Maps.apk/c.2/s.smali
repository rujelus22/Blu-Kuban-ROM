.class Lc/s;
.super Ljava/lang/Object;


# instance fields
.field private a:LW/a;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc/s;->d()LW/a;

    move-result-object v0

    iput-object v0, p0, Lc/s;->a:LW/a;

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lc/s;->a:LW/a;

    iget-object v1, p0, Lc/s;->a:LW/a;

    invoke-virtual {v1, p1}, LW/a;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, LW/a;->g(II)V

    return-void
.end method

.method private static d()LW/a;
    .registers 3

    const/4 v2, 0x0

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->J:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    return-object v0
.end method


# virtual methods
.method public a(II)LW/a;
    .registers 5

    iget-object v0, p0, Lc/s;->a:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, LW/a;->g(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, LW/a;->g(II)V

    invoke-static {}, Lc/s;->d()LW/a;

    move-result-object v1

    iput-object v1, p0, Lc/s;->a:LW/a;

    return-object v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lc/s;->a(I)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lc/s;->a(I)V

    if-eqz p1, :cond_a

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lc/s;->a(I)V

    :cond_a
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lc/s;->a(I)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lc/s;->a(I)V

    return-void
.end method
