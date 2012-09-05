.class public LI/j;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Z

.field private static volatile b:LI/q;

.field private static volatile c:LI/q;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, LI/j;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, LI/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, LI/j;->c()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LI/q;
    .registers 1

    sget-object v0, LI/j;->b:LI/q;

    return-object v0
.end method

.method static synthetic a(LI/q;)LI/q;
    .registers 1

    sput-object p0, LI/j;->c:LI/q;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lat/h;LI/e;)V
    .registers 4

    const-string v0, "TransitNavigationParameters"

    invoke-static {p0, p1, p2, v0}, LI/j;->a(Landroid/content/Context;Lat/h;LI/e;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lat/h;LI/e;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x2

    sget-boolean v0, LI/j;->a:Z

    if-eqz v0, :cond_11

    invoke-static {}, LI/j;->b()V

    if-eqz p2, :cond_10

    invoke-interface {p2}, LI/e;->a()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    sget-object v0, LbD/z;->d:Lam/e;

    invoke-static {p0, p3, v0}, LI/r;->a(Landroid/content/Context;Ljava/lang/String;Lam/e;)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_23
    new-instance v2, LI/q;

    invoke-direct {v2, v0}, LI/q;-><init>(Lam/b;)V

    sput-object v2, LI/j;->b:LI/q;

    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v1, v3}, Lam/b;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_38
    if-eqz p1, :cond_10

    new-instance v0, LI/f;

    const-class v1, LI/l;

    invoke-direct {v0, p1, p2, v1}, LI/f;-><init>(Lat/h;LI/e;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lat/h;->a(Lat/p;)V

    new-instance v0, LI/l;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LI/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LI/e;LI/k;)V

    invoke-virtual {p1, v0}, Lat/h;->c(Lat/g;)V

    goto :goto_10

    :cond_50
    new-instance v1, Lam/b;

    sget-object v0, LbD/z;->d:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    new-instance v0, Lam/b;

    sget-object v2, LbD/z;->p:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    goto :goto_23

    :cond_5f
    move-object v3, v5

    goto :goto_38
.end method

.method static b()V
    .registers 3

    sget-object v0, LI/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, LI/j;->c:LI/q;

    sput-object v0, LI/j;->b:LI/q;

    :cond_e
    return-void
.end method

.method public static c()V
    .registers 3

    new-instance v0, LI/q;

    new-instance v1, Lam/b;

    sget-object v2, LbD/z;->p:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-direct {v0, v1}, LI/q;-><init>(Lam/b;)V

    sput-object v0, LI/j;->b:LI/q;

    return-void
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, LI/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
