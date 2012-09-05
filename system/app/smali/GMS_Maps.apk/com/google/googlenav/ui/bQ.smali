.class public abstract Lcom/google/googlenav/ui/bQ;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/r;
.implements Laf/j;


# instance fields
.field protected final a:LaJ/p;

.field protected b:Z

.field protected c:Z

.field private d:Lcom/google/googlenav/ui/bR;


# direct methods
.method public constructor <init>(LaJ/p;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/bQ;->a:LaJ/p;

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bQ;->c:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bQ;->b:Z

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/bQ;->a:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->c()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/Y;->a(I)I

    move-result v0

    return v0
.end method

.method protected abstract a()V
.end method

.method public final a(LaJ/Y;II)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bQ;->a()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/bQ;->b(LaJ/Y;II)V

    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bR;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bQ;->d:Lcom/google/googlenav/ui/bR;

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract b(LaJ/Y;II)V
.end method

.method public c()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bQ;->c:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/google/googlenav/ui/bQ;->c:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/bQ;->b:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bQ;->b()V

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .registers 1

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    return-void
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bQ;->b:Z

    return v0
.end method

.method public abstract g()Z
.end method
