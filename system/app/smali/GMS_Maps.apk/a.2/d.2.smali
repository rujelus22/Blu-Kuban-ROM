.class final La/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Li/B;

.field private b:J

.field private c:J

.field private final d:Lc/p;

.field private e:La/c;


# direct methods
.method public constructor <init>(Lc/p;)V
    .registers 6

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La/d;->a:Li/B;

    iput-wide v2, p0, La/d;->b:J

    iput-wide v2, p0, La/d;->c:J

    new-instance v0, La/c;

    invoke-direct {v0, v1}, La/c;-><init>(La/b;)V

    iput-object v0, p0, La/d;->e:La/c;

    iput-object p1, p0, La/d;->d:Lc/p;

    return-void
.end method


# virtual methods
.method public a()Lc/p;
    .registers 2

    iget-object v0, p0, La/d;->d:Lc/p;

    return-object v0
.end method

.method a(Li/B;Le/b;Le/L;)V
    .registers 6

    if-eqz p1, :cond_4

    iput-object p1, p0, La/d;->a:Li/B;

    :cond_4
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Le/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, La/d;->c:J

    if-eqz p1, :cond_13

    iget-object v0, p0, La/d;->e:La/c;

    invoke-static {v0, p2, p1}, La/c;->a(La/c;Le/b;Li/B;)V

    :cond_13
    if-eqz p3, :cond_22

    iget-wide v0, p3, Le/L;->a:J

    iput-wide v0, p0, La/d;->b:J

    iget-object v0, p0, La/d;->d:Lc/p;

    if-eqz v0, :cond_22

    iget-object v0, p0, La/d;->d:Lc/p;

    invoke-virtual {v0, p3}, Lc/p;->b(Le/L;)V

    :cond_22
    return-void
.end method

.method a(Le/b;Li/B;)Z
    .registers 4

    iget-object v0, p0, La/d;->e:La/c;

    invoke-static {v0, p1, p2}, La/c;->b(La/c;Le/b;Li/B;)Z

    move-result v0

    return v0
.end method

.method b()Li/B;
    .registers 2

    iget-object v0, p0, La/d;->a:Li/B;

    return-object v0
.end method

.method c()J
    .registers 3

    iget-object v0, p0, La/d;->a:Li/B;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, La/d;->a:Li/B;

    invoke-interface {v0}, Li/B;->f()J

    move-result-wide v0

    goto :goto_6
.end method

.method d()J
    .registers 3

    iget-wide v0, p0, La/d;->c:J

    return-wide v0
.end method

.method e()J
    .registers 3

    iget-wide v0, p0, La/d;->b:J

    return-wide v0
.end method
