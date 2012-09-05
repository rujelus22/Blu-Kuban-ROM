.class public abstract Lcom/google/googlenav/ui/bb;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/ui/bb;->a:I

    iput p2, p0, Lcom/google/googlenav/ui/bb;->b:I

    iput p3, p0, Lcom/google/googlenav/ui/bb;->c:I

    iput p4, p0, Lcom/google/googlenav/ui/bb;->d:I

    iput p5, p0, Lcom/google/googlenav/ui/bb;->e:I

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/bb;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/bb;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public d()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/bb;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public e()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/bb;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bb;->b()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bb;->c()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bb;->d()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bb;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bb;->a:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bb;->b:I

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bb;->c:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bb;->d:I

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/bb;->e:I

    return v0
.end method
