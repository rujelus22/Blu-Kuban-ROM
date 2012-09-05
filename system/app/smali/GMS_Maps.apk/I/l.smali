.class LI/l;
.super Lat/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Long;

.field private final d:LI/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LI/e;)V
    .registers 5

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, LI/l;->a:Landroid/content/Context;

    iput-object p2, p0, LI/l;->b:Ljava/lang/String;

    iput-object p3, p0, LI/l;->c:Ljava/lang/Long;

    iput-object p4, p0, LI/l;->d:LI/e;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LI/e;LI/k;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, LI/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LI/e;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/z;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v4, v1}, Lam/b;->h(II)V

    iget-object v1, p0, LI/l;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    iget-object v2, p0, LI/l;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    :cond_1a
    new-instance v1, Lam/b;

    sget-object v2, LbD/z;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v4, v0}, Lam/b;->a(ILam/b;)V

    invoke-static {v1}, Lae/d;->a(Lam/b;)V

    invoke-virtual {v1}, Lam/b;->d()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10

    const/16 v7, 0x9

    const/4 v6, 0x1

    sget-object v0, LbD/z;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_45

    invoke-virtual {v1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v6}, Lam/b;->d(I)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_42

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v3, v7}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, LI/l;->a:Landroid/content/Context;

    iget-object v5, p0, LI/l;->b:Ljava/lang/String;

    invoke-static {v4, v3, v5}, LI/r;->a(Landroid/content/Context;Lam/b;Ljava/lang/String;)Z

    invoke-virtual {v3, v7}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    new-instance v4, LI/q;

    invoke-direct {v4, v3}, LI/q;-><init>(Lam/b;)V

    invoke-static {v4}, LI/j;->a(LI/q;)LI/q;

    invoke-static {}, LI/j;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_45
    sput-boolean v6, LI/j;->a:Z

    iget-object v0, p0, LI/l;->d:LI/e;

    if-eqz v0, :cond_50

    iget-object v0, p0, LI/l;->d:LI/e;

    invoke-interface {v0}, LI/e;->a()V

    :cond_50
    return v6
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
