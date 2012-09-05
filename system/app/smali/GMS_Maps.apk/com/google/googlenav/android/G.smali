.class public Lcom/google/googlenav/android/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/F;


# instance fields
.field private a:Lcom/google/googlenav/android/E;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Lcom/google/android/maps/driveabout/vector/cV;
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->i()LaJ/p;

    move-result-object v0

    instance-of v1, v0, LaK/a;

    if-nez v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    check-cast v0, LaK/a;

    invoke-virtual {v0}, LaK/a;->u()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    goto :goto_11
.end method

.method private d()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(FZZ)V
    .registers 11

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/android/G;->c()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v6

    if-nez v6, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    if-nez p2, :cond_3e

    :goto_12
    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->y()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->e()I

    move-result v0

    int-to-float v4, v0

    :goto_25
    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    if-eqz p3, :cond_45

    const/16 v1, 0x190

    :goto_3a
    invoke-virtual {v6, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto :goto_7

    :cond_3e
    cmpl-float v1, v0, v3

    if-nez v1, :cond_49

    const/high16 v3, 0x4248

    goto :goto_12

    :cond_45
    const/4 v1, 0x0

    goto :goto_3a

    :cond_47
    move v4, p1

    goto :goto_25

    :cond_49
    move v3, v0

    goto :goto_12
.end method

.method public a(LaJ/v;)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->j()LaJ/u;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/u;->a(LaJ/v;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/E;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/G;->a:Lcom/google/googlenav/android/E;

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/G;->b(Z)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/android/G;->b:I

    if-ne v0, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput v0, p0, Lcom/google/googlenav/android/G;->b:I

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/android/G;->b:I

    invoke-virtual {v0, v1}, Lbb/e;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/android/G;->a:Lcom/google/googlenav/android/E;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/android/G;->a:Lcom/google/googlenav/android/E;

    invoke-interface {v0}, Lcom/google/googlenav/android/E;->a()V

    goto :goto_8
.end method

.method public a()Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->i()LaJ/p;

    move-result-object v0

    instance-of v2, v0, LaK/a;

    if-eqz v2, :cond_1c

    check-cast v0, LaK/a;

    invoke-virtual {v0}, LaK/a;->u()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->h()Z

    move-result v0

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method public b(Z)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/android/G;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/googlenav/android/G;->d()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x3

    :goto_d
    return v0

    :cond_e
    if-nez p1, :cond_12

    const/4 v0, 0x4

    goto :goto_d

    :cond_12
    const/4 v0, 0x5

    goto :goto_d
.end method

.method public b()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->o()Z

    move-result v0

    return v0
.end method
