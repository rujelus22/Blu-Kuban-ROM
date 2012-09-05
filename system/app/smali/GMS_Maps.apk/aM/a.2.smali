.class public LaM/a;
.super Ljava/lang/Object;

# interfaces
.implements LaM/l;
.implements Lcom/google/googlenav/g;


# instance fields
.field private final a:LaM/f;

.field private final b:LaM/f;

.field private final c:Lat/h;

.field private final d:Lcom/google/googlenav/ui/at;

.field private final e:LaM/o;

.field private f:Ljava/util/Set;

.field private g:Z

.field private h:Z

.field private i:Ljava/util/Set;

.field private j:Z


# direct methods
.method public constructor <init>(LaM/f;LaM/f;Lat/h;Lcom/google/googlenav/ui/at;LaM/o;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, LaM/a;->f:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/a;->h:Z

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, LaM/a;->i:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/a;->j:Z

    iput-object p2, p0, LaM/a;->b:LaM/f;

    iput-object p1, p0, LaM/a;->a:LaM/f;

    iput-object p3, p0, LaM/a;->c:Lat/h;

    iput-object p4, p0, LaM/a;->d:Lcom/google/googlenav/ui/at;

    iput-object p5, p0, LaM/a;->e:LaM/o;

    return-void
.end method

.method private a(LaM/i;Ljava/util/List;)V
    .registers 8

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, LaM/a;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, LaM/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, LaM/i;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, LaM/a;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_32

    :cond_31
    return-void

    :cond_32
    iget-object v3, p0, LaM/a;->i:Ljava/util/Set;

    invoke-virtual {v2}, LaM/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    iget-object v3, p0, LaM/a;->c:Lat/h;

    invoke-virtual {v3, v2}, Lat/h;->c(Lat/g;)V

    iget-object v2, p0, LaM/a;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private a(LaM/f;Ljava/lang/String;Lam/b;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p1}, LaM/f;->g()LaM/i;

    move-result-object v1

    invoke-interface {v1, p2}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_b
    return v0

    :cond_c
    invoke-interface {p1, p2, p3}, LaM/f;->b(Ljava/lang/String;Lam/b;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, LaM/a;->i:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "BPDF2"

    invoke-static {v2, p2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-interface {v1, p2}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v2

    if-eqz v2, :cond_31

    new-instance v3, LaM/n;

    invoke-virtual {v2}, LaM/n;->d()Lam/b;

    move-result-object v2

    invoke-direct {v3, v2}, LaM/n;-><init>(Lam/b;)V

    invoke-virtual {v3, v0}, LaM/n;->a(Z)V

    invoke-interface {v1, v3}, LaM/i;->a(LaM/n;)V

    :cond_31
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, LaM/a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, LaM/a;->g:Z

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iput-boolean v4, p0, LaM/a;->g:Z

    iget-object v0, p0, LaM/a;->d:Lcom/google/googlenav/ui/at;

    if-eqz v0, :cond_53

    iget-object v0, p0, LaM/a;->d:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, LaM/a;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    iget-object v1, p0, LaM/a;->d:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    invoke-interface {v0, v1}, LaM/i;->a(LaJ/B;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_2d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, LaM/a;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, LaM/m;->h()Z

    move-result v0

    if-nez v0, :cond_31

    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    :cond_53
    iget-object v0, p0, LaM/a;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0}, LaM/i;->b()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_2d

    :cond_5f
    iget-object v0, p0, LaM/a;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-direct {p0, v0, v1}, LaM/a;->a(LaM/i;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, LaM/a;->b:LaM/f;

    if-eqz v1, :cond_8d

    iget-boolean v1, p0, LaM/a;->h:Z

    if-eqz v1, :cond_8d

    iget-object v1, p0, LaM/a;->b:LaM/f;

    invoke-interface {v1}, LaM/f;->g()LaM/i;

    move-result-object v1

    invoke-interface {v1}, LaM/i;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, LaM/a;->b:LaM/f;

    invoke-interface {v2}, LaM/f;->g()LaM/i;

    move-result-object v2

    invoke-direct {p0, v2, v1}, LaM/a;->a(LaM/i;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8d
    iget-boolean v1, p0, LaM/a;->j:Z

    if-eqz v1, :cond_d

    iput-boolean v4, p0, LaM/a;->j:Z

    const-string v1, "BPDF1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_d
.end method

.method public a(Ljava/lang/String;Lam/b;)V
    .registers 4

    iget-object v0, p0, LaM/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LaM/a;->a:LaM/f;

    invoke-direct {p0, v0, p1, p2}, LaM/a;->a(LaM/f;Ljava/lang/String;Lam/b;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, LaM/a;->b:LaM/f;

    if-eqz v0, :cond_16

    iget-object v0, p0, LaM/a;->b:LaM/f;

    invoke-direct {p0, v0, p1, p2}, LaM/a;->a(LaM/f;Ljava/lang/String;Lam/b;)Z

    :cond_16
    invoke-virtual {p0}, LaM/a;->b()V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaM/a;->h:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, LaM/a;->b()V

    :cond_7
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/a;->g:Z

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, LaM/a;->e:LaM/o;

    if-eqz v0, :cond_28

    iget-object v0, p0, LaM/a;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p1}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, LaM/a;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p1}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, LaM/a;->e:LaM/o;

    invoke-virtual {v0, p1}, LaM/o;->d(Ljava/lang/String;)V

    :cond_28
    iget-object v0, p0, LaM/a;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p1}, LaM/i;->d(Ljava/lang/String;)Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_4a

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    iget-object v0, p0, LaM/a;->b:LaM/f;

    if-eqz v0, :cond_46

    iget-object v0, p0, LaM/a;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p1}, LaM/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_46
    invoke-virtual {p0}, LaM/a;->b()V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_4a

    goto :goto_34

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
