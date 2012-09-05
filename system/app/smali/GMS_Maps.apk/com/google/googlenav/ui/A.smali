.class public Lcom/google/googlenav/ui/A;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/r;
.implements Lar/m;


# static fields
.field private static final e:I


# instance fields
.field protected a:LaJ/p;

.field protected b:Lah/f;

.field protected final c:Landroid/graphics/Point;

.field protected d:Z

.field private f:Lah/e;

.field private g:Lcom/google/googlenav/ui/C;

.field private h:Landroid/graphics/Point;

.field private i:I

.field private j:I

.field private k:Lcom/google/googlenav/ui/B;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/A;->e:I

    return-void
.end method

.method public constructor <init>(LaJ/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/A;->h:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/A;->d:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    return-void
.end method

.method public static b(I)I
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/A;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 p0, v0, 0x1

    :cond_a
    return p0
.end method

.method public static c()Z
    .registers 1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static d(II)Z
    .registers 3

    sget v0, Lcom/google/googlenav/ui/A;->e:I

    neg-int v0, v0

    if-lt p0, v0, :cond_14

    sget v0, Lcom/google/googlenav/ui/A;->e:I

    if-gt p0, v0, :cond_14

    sget v0, Lcom/google/googlenav/ui/A;->e:I

    neg-int v0, v0

    if-lt p1, v0, :cond_14

    sget v0, Lcom/google/googlenav/ui/A;->e:I

    if-gt p1, v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->c()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/Y;->a(I)I

    move-result v0

    return v0
.end method

.method public a(II)Lcom/google/googlenav/ui/C;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/A;->b(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->g:Lcom/google/googlenav/ui/C;

    return-object v0
.end method

.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->k:Lcom/google/googlenav/ui/B;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->k:Lcom/google/googlenav/ui/B;

    invoke-interface {v0}, Lcom/google/googlenav/ui/B;->a()V

    :cond_9
    return-void
.end method

.method public final a(IIZ)V
    .registers 7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/googlenav/ui/A;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/r;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    invoke-virtual {v0, p1, p2}, LaJ/p;->c(II)V

    if-eqz p3, :cond_1f

    if-nez p1, :cond_14

    if-eqz p2, :cond_1f

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->d()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/p;->e(LaJ/B;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->h:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public a(LaJ/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 4

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public a(Laq/c;Z)V
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p1}, Laq/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/A;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:LaJ/p;

    invoke-virtual {v0, p0}, LaJ/p;->a(LaJ/r;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->h:Landroid/graphics/Point;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v1

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iput-boolean v3, p0, Lcom/google/googlenav/ui/A;->d:Z

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p1}, Laq/c;->c()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/google/googlenav/ui/A;->d:Z

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/A;->h:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/A;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v3, v0, v3

    invoke-static {v3, v2}, Lcom/google/googlenav/ui/A;->d(II)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1e

    :cond_53
    invoke-virtual {p1}, Laq/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/googlenav/ui/A;->d:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/A;->a(IIZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/A;->b()V

    goto :goto_1e
.end method

.method public a(Lcom/google/googlenav/ui/B;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/A;->k:Lcom/google/googlenav/ui/B;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->f()I

    move-result v2

    const v3, 0xded7d6

    invoke-interface {v0, v3}, Lah/e;->a(I)V

    invoke-interface {v0, v4, v4, v1, v2}, Lah/e;->b(IIII)V

    return-void
.end method

.method public a(LaA/t;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected final b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->k:Lcom/google/googlenav/ui/B;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->k:Lcom/google/googlenav/ui/B;

    invoke-interface {v0}, Lcom/google/googlenav/ui/B;->b()V

    :cond_9
    return-void
.end method

.method protected b(II)V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    if-nez v0, :cond_30

    iput p1, p0, Lcom/google/googlenav/ui/A;->i:I

    iput p2, p0, Lcom/google/googlenav/ui/A;->j:I

    invoke-static {p1}, Lcom/google/googlenav/ui/A;->b(I)I

    move-result v0

    invoke-static {p2}, Lcom/google/googlenav/ui/A;->b(I)I

    move-result v1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->o()Lah/h;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1a
    invoke-interface {v2, v0, v1, v3}, Lah/h;->a(IIZ)Lah/f;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_20} :catch_31

    :goto_20
    iget-object v2, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    invoke-interface {v2}, Lah/f;->c()Lah/e;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/A;->f:Lah/e;

    iget-object v2, p0, Lcom/google/googlenav/ui/A;->f:Lah/e;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/C;->b(Lah/e;II)Lcom/google/googlenav/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/A;->g:Lcom/google/googlenav/ui/C;

    :cond_30
    return-void

    :catch_31
    move-exception v3

    invoke-static {}, Laf/l;->b()V

    invoke-interface {v2, v0, v1, v4}, Lah/h;->a(IIZ)Lah/f;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    goto :goto_20
.end method

.method public b(Lcom/google/googlenav/ui/C;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->f()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    invoke-interface {v3}, Lah/f;->a()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    invoke-interface {v3}, Lah/f;->b()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    invoke-interface {v0, v3, v1, v2}, Lah/e;->a(Lah/f;II)V

    return-void
.end method

.method public c(II)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/A;->i:I

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/google/googlenav/ui/A;->j:I

    if-eq p2, v0, :cond_18

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    invoke-interface {v0}, Lah/f;->d()V

    iput-object v1, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    iput-object v1, p0, Lcom/google/googlenav/ui/A;->f:Lah/e;

    iput-object v1, p0, Lcom/google/googlenav/ui/A;->g:Lcom/google/googlenav/ui/C;

    :cond_18
    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/A;->d:Z

    return v0
.end method

.method public g()Lar/k;
    .registers 4

    new-instance v1, Lar/k;

    const-string v2, "DragBuffer"

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-direct {v1, v2, v0}, Lar/k;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/A;->b:Lah/f;

    invoke-interface {v0}, Lah/f;->g()I

    move-result v0

    goto :goto_9
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/A;->d:Z

    return-void
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method
