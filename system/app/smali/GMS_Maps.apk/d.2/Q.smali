.class Ld/Q;
.super Ld/aj;


# instance fields
.field private e:LW/a;

.field private f:LW/a;


# direct methods
.method constructor <init>(Ld/C;Lm/c;)V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Ld/aq;

    invoke-direct {v0}, Ld/aq;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Ld/aj;-><init>(Ld/C;Lm/c;Ld/aq;)V

    iput-object v1, p0, Ld/Q;->e:LW/a;

    iput-object v1, p0, Ld/Q;->f:LW/a;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Ld/Q;->e:LW/a;

    iput-object v0, p0, Ld/Q;->f:LW/a;

    iget-object v0, p0, Ld/Q;->a:Ld/C;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/Q;->a:Ld/C;

    iget-object v1, p0, Ld/Q;->f:LW/a;

    invoke-interface {v0, v1}, Ld/C;->a(LW/a;)V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Ld/Q;->e:LW/a;

    return-void
.end method

.method protected a(LW/a;LW/a;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x4

    iget-object v1, p0, Ld/Q;->e:LW/a;

    if-nez v1, :cond_18

    invoke-static {p1}, Ld/ax;->a(LW/a;)LW/a;

    move-result-object v1

    iput-object v1, p0, Ld/Q;->e:LW/a;

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, LW/a;->g(II)V

    iget-object v0, p0, Ld/Q;->e:LW/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, LW/a;->b(ILW/a;)V

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    invoke-virtual {p1, v4}, LW/a;->i(I)I

    move-result v1

    :goto_1c
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Ld/Q;->e:LW/a;

    invoke-virtual {p1, v4, v0}, LW/a;->d(II)LW/a;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, LW/a;->a(ILW/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method
