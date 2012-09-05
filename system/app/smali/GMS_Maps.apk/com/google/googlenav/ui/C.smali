.class public Lcom/google/googlenav/ui/C;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/google/googlenav/ui/C;


# instance fields
.field private a:Lah/e;

.field private b:Lah/e;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lah/e;II)Lcom/google/googlenav/ui/C;
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/C;->a(Lah/e;IIIIII)Lcom/google/googlenav/ui/C;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lah/e;IIIIII)Lcom/google/googlenav/ui/C;
    .registers 15

    sget-object v0, Lcom/google/googlenav/ui/C;->i:Lcom/google/googlenav/ui/C;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/ui/C;

    invoke-direct {v0}, Lcom/google/googlenav/ui/C;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/C;->i:Lcom/google/googlenav/ui/C;

    :cond_b
    sget-object v0, Lcom/google/googlenav/ui/C;->i:Lcom/google/googlenav/ui/C;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/C;->b(Lah/e;IIIIII)V

    sget-object v0, Lcom/google/googlenav/ui/C;->i:Lcom/google/googlenav/ui/C;

    return-object v0
.end method

.method public static b(Lah/e;II)Lcom/google/googlenav/ui/C;
    .registers 11

    const/4 v4, 0x0

    new-instance v0, Lcom/google/googlenav/ui/C;

    invoke-direct {v0}, Lcom/google/googlenav/ui/C;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/C;->b(Lah/e;IIIIII)V

    return-object v0
.end method

.method private b(Lah/e;IIIIII)V
    .registers 14

    iput p2, p0, Lcom/google/googlenav/ui/C;->c:I

    iput p3, p0, Lcom/google/googlenav/ui/C;->d:I

    iput p4, p0, Lcom/google/googlenav/ui/C;->e:I

    iput p5, p0, Lcom/google/googlenav/ui/C;->f:I

    iput p6, p0, Lcom/google/googlenav/ui/C;->g:I

    iput p7, p0, Lcom/google/googlenav/ui/C;->h:I

    iput-object p1, p0, Lcom/google/googlenav/ui/C;->a:Lah/e;

    if-nez p4, :cond_19

    if-nez p5, :cond_19

    if-ne p6, p2, :cond_19

    if-ne p7, p3, :cond_19

    iput-object p1, p0, Lcom/google/googlenav/ui/C;->b:Lah/e;

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/C;->b:Lah/e;

    instance-of v0, v0, Lah/q;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/C;->b:Lah/e;

    check-cast v0, Lah/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/C;->a:Lah/e;

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lah/q;->a(Lah/e;IIII)V

    goto :goto_18

    :cond_2d
    new-instance v0, Lah/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/C;->a:Lah/e;

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lah/q;-><init>(Lah/e;IIII)V

    iput-object v0, p0, Lcom/google/googlenav/ui/C;->b:Lah/e;

    goto :goto_18
.end method


# virtual methods
.method public a()Lah/e;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/C;->a:Lah/e;

    return-object v0
.end method

.method public b()Lah/e;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/C;->b:Lah/e;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/C;->e:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/C;->f:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/C;->g:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/C;->h:I

    return v0
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/C;->b:Lah/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/C;->a:Lah/e;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public h()V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/C;->a:Lah/e;

    const/high16 v1, -0x100

    invoke-interface {v0, v1}, Lah/e;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/C;->a:Lah/e;

    iget v1, p0, Lcom/google/googlenav/ui/C;->e:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/C;->f:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/googlenav/ui/C;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/google/googlenav/ui/C;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lah/e;->c(IIII)V

    return-void
.end method
