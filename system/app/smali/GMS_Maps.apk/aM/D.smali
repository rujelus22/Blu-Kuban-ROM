.class public LaM/D;
.super Ljava/lang/Object;

# interfaces
.implements LaM/B;
.implements LaM/t;


# instance fields
.field private a:LaM/z;

.field private b:LaM/s;

.field private c:Ljava/util/Vector;

.field private d:LaM/C;

.field private e:Lam/b;


# direct methods
.method constructor <init>(LaM/z;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/D;->c:Ljava/util/Vector;

    iput-object p1, p0, LaM/D;->a:LaM/z;

    return-void
.end method

.method static synthetic a(LaM/D;)V
    .registers 1

    invoke-direct {p0}, LaM/D;->b()V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, LaM/D;->e:Lam/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaM/D;->e:Lam/b;

    invoke-direct {p0, v0}, LaM/D;->b(Lam/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, LaM/D;->e:Lam/b;

    :cond_c
    return-void
.end method

.method private b(Lam/b;)V
    .registers 5

    iget-object v0, p0, LaM/D;->b:LaM/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaM/D;->b:LaM/s;

    invoke-virtual {v0}, LaM/s;->X()V

    :cond_9
    new-instance v0, LaM/s;

    invoke-direct {v0, p1}, LaM/s;-><init>(Lam/b;)V

    iput-object v0, p0, LaM/D;->b:LaM/s;

    iget-object v0, p0, LaM/D;->b:LaM/s;

    invoke-virtual {v0, p0}, LaM/s;->a(LaM/t;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, LaM/D;->b:LaM/s;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, LaM/D;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/C;

    iget-object v2, p0, LaM/D;->b:LaM/s;

    invoke-interface {v0, v2}, LaM/C;->a(LaM/s;)V

    goto :goto_24

    :cond_36
    iget-object v0, p0, LaM/D;->d:LaM/C;

    if-eqz v0, :cond_41

    iget-object v0, p0, LaM/D;->d:LaM/C;

    iget-object v1, p0, LaM/D;->b:LaM/s;

    invoke-interface {v0, v1}, LaM/C;->a(LaM/s;)V

    :cond_41
    return-void
.end method


# virtual methods
.method public a(LaM/C;)V
    .registers 3

    iget-object v0, p0, LaM/D;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, LaM/D;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Lam/b;)V
    .registers 4

    iget-object v0, p0, LaM/D;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/C;

    invoke-interface {v0, p1}, LaM/C;->a(Lam/b;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, LaM/D;->d:LaM/C;

    if-eqz v0, :cond_1f

    iget-object v0, p0, LaM/D;->d:LaM/C;

    invoke-interface {v0, p1}, LaM/C;->a(Lam/b;)V

    :cond_1f
    iget-object v0, p0, LaM/D;->a:LaM/z;

    invoke-interface {v0, p1}, LaM/z;->a(Lam/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, LaM/D;->b:LaM/s;

    iget-object v0, p0, LaM/D;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/C;

    invoke-interface {v0}, LaM/C;->O_()V

    goto :goto_2d

    :cond_3d
    iget-object v0, p0, LaM/D;->d:LaM/C;

    if-eqz v0, :cond_46

    iget-object v0, p0, LaM/D;->d:LaM/C;

    invoke-interface {v0}, LaM/C;->O_()V

    :cond_46
    return-void
.end method

.method a()Z
    .registers 2

    iget-object v0, p0, LaM/D;->b:LaM/s;

    if-eqz v0, :cond_e

    iget-object v0, p0, LaM/D;->b:LaM/s;

    invoke-virtual {v0}, LaM/s;->k()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a_(Lam/b;)V
    .registers 4

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p1, p0, LaM/D;->e:Lam/b;

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, LaM/E;

    invoke-direct {v1, p0}, LaM/E;-><init>(LaM/D;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0, p1}, LaM/D;->b(Lam/b;)V

    goto :goto_14
.end method

.method public b(LaM/C;)V
    .registers 3

    iget-object v0, p0, LaM/D;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, LaM/D;->b:LaM/s;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaM/D;->b:LaM/s;

    invoke-virtual {v0}, LaM/s;->X()V

    const/4 v0, 0x0

    iput-object v0, p0, LaM/D;->b:LaM/s;

    :cond_c
    return-void
.end method
