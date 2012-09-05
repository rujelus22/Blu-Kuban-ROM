.class public Lcom/google/googlenav/android/D;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/v;
.implements LaP/i;


# static fields
.field public static final a:Lcom/google/googlenav/android/D;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/google/googlenav/android/F;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/googlenav/android/D;

    invoke-direct {v0}, Lcom/google/googlenav/android/D;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->d:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    invoke-interface {v0}, Lcom/google/googlenav/android/F;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(FF)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->c:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/android/D;->a(FZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/D;->c:Z

    :cond_e
    return-void
.end method

.method a(FZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    iget-boolean v1, p0, Lcom/google/googlenav/android/D;->b:Z

    invoke-interface {v0, p1, v1, p2}, Lcom/google/googlenav/android/F;->a(FZZ)V

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/android/E;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/F;->a(Lcom/google/googlenav/android/E;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/google/googlenav/android/F;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    return-void
.end method

.method public a(ZZZ)V
    .registers 5

    iput-boolean p3, p0, Lcom/google/googlenav/android/D;->d:Z

    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->j()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->g()V

    :cond_14
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->f:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/D;->f:Z

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, LaP/h;->a(LaP/i;)V

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    invoke-interface {v0, p0}, Lcom/google/googlenav/android/F;->a(LaJ/v;)V

    return-void
.end method

.method d()Z
    .registers 2

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/googlenav/android/D;->l()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    if-nez v0, :cond_10

    iput-boolean v1, p0, Lcom/google/googlenav/android/D;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/android/D;->c:Z

    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->f()V

    :goto_c
    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->g()V

    return-void

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/D;->a(FZ)V

    goto :goto_c
.end method

.method f()V
    .registers 4

    const/16 v0, 0x62

    const-string v1, "a"

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v2

    invoke-virtual {v2}, LaP/h;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public g()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    iget-boolean v1, p0, Lcom/google/googlenav/android/D;->b:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/F;->a(Z)V

    :cond_13
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->g()V

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    if-eqz v0, :cond_28

    sget-object v0, LaP/j;->c:LaP/j;

    :goto_24
    invoke-virtual {v1, v0}, LaP/h;->a(LaP/j;)V

    :cond_27
    return-void

    :cond_28
    sget-object v0, LaP/j;->b:LaP/j;

    goto :goto_24
.end method

.method public h()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/D;->b:Z

    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->g()V

    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/D;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->g()V

    return-void
.end method

.method j()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    invoke-interface {v0}, Lcom/google/googlenav/android/F;->b()Z

    move-result v0

    return v0
.end method

.method public k()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/D;->e:Lcom/google/googlenav/android/F;

    iget-boolean v1, p0, Lcom/google/googlenav/android/D;->b:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/F;->b(Z)I

    move-result v0

    return v0
.end method
