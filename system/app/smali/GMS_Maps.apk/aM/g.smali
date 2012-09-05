.class public LaM/g;
.super Ljava/lang/Object;

# interfaces
.implements LaM/f;
.implements LaM/l;
.implements Lcom/google/googlenav/g;


# instance fields
.field protected final a:Ljava/lang/String;

.field private final b:I

.field private final c:LaM/u;

.field private d:Lat/h;

.field private final e:Lak/m;

.field private final f:Ljava/util/List;

.field private g:Lcom/google/googlenav/ui/wizard/hM;

.field private h:LaM/i;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaM/u;Lat/h;Lak/m;ILam/e;Ljava/lang/String;LaM/o;)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/g;->f:Ljava/util/List;

    iput-boolean v1, p0, LaM/g;->j:Z

    iput-boolean v1, p0, LaM/g;->k:Z

    iput-object p1, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p2, p0, LaM/g;->c:LaM/u;

    iput-object p3, p0, LaM/g;->d:Lat/h;

    iput-object p4, p0, LaM/g;->e:Lak/m;

    iput p5, p0, LaM/g;->b:I

    iput-object p7, p0, LaM/g;->a:Ljava/lang/String;

    iget-object v0, p0, LaM/g;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, LaM/g;->i:Z

    invoke-direct {p0, p8, p6}, LaM/g;->a(LaM/o;Lam/e;)V

    invoke-virtual {p0}, LaM/g;->k()V

    return-void
.end method

.method static synthetic a(LaM/g;)V
    .registers 1

    invoke-direct {p0}, LaM/g;->l()V

    return-void
.end method

.method private a(LaM/o;Lam/e;)V
    .registers 5

    iget-object v0, p0, LaM/g;->c:LaM/u;

    iget v1, p0, LaM/g;->b:I

    invoke-interface {v0, v1}, LaM/u;->b(I)LaM/w;

    move-result-object v0

    invoke-static {p2, v0, p1}, LaM/j;->a(Lam/e;LaM/w;LaM/o;)LaM/j;

    move-result-object v0

    iput-object v0, p0, LaM/g;->h:LaM/i;

    iget-object v0, p0, LaM/g;->h:LaM/i;

    invoke-interface {v0, p0}, LaM/i;->a(LaM/l;)V

    return-void
.end method

.method private l()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, LaM/g;->k:Z

    iget-boolean v0, p0, LaM/g;->j:Z

    if-eqz v0, :cond_e

    iput-boolean v1, p0, LaM/g;->j:Z

    iget-object v0, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    :cond_e
    iget-object v0, p0, LaM/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->E_()V

    goto :goto_14

    :cond_24
    return-void
.end method


# virtual methods
.method public B_()V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, LaM/g;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0}, LaM/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/m;

    invoke-virtual {v0}, LaM/m;->h()Z

    move-result v0

    if-eqz v0, :cond_4d

    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    goto :goto_e

    :cond_24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "v="

    aput-object v2, v0, v1

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "s"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_4d
    move v0, v1

    goto :goto_22
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 4

    iget-boolean v0, p0, LaM/g;->k:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/g;->k:Z

    iget-object v0, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_24

    iget-object v0, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iget-object v1, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, LaM/h;

    invoke-direct {v2, p0}, LaM/h;-><init>(LaM/g;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_4

    :cond_24
    invoke-direct {p0}, LaM/g;->l()V

    goto :goto_4
.end method

.method public F_()V
    .registers 3

    iget-object v0, p0, LaM/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->F_()V

    goto :goto_6

    :cond_16
    invoke-virtual {p0}, LaM/g;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0}, LaM/i;->c()V

    return-void
.end method

.method public a(LaM/m;LaM/n;LaY/Y;Ljava/lang/String;)LaM/m;
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, LaM/g;->g()LaM/i;

    move-result-object v1

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, LaM/m;->h()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0, v3}, LaM/m;->a(Z)V

    invoke-interface {v1, v0}, LaM/i;->a(LaM/m;)Z

    const-string v1, "d"

    invoke-virtual {v0}, LaM/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p4}, LaM/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_25
    return-object p1

    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LaM/m;->a(Z)V

    invoke-interface {v1, p1}, LaM/i;->a(LaM/m;)Z

    if-eqz p2, :cond_32

    invoke-interface {v1, p2}, LaM/i;->a(LaM/n;)V

    :cond_32
    if-eqz p3, :cond_44

    invoke-virtual {p3}, LaY/Y;->y()LaY/aT;

    move-result-object v0

    if-nez v0, :cond_3d

    invoke-virtual {p3, v3}, LaY/Y;->a(Z)LaY/aT;

    :cond_3d
    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, LaY/Y;->d(Ljava/lang/String;)V

    :cond_44
    const-string v0, "c"

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p4}, LaM/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, LaM/i;->e(Ljava/lang/String;)V

    goto :goto_25
.end method

.method a(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    iput-object p1, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/f;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    iget-object v1, p0, LaM/g;->d:Lat/h;

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lam/b;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, LaM/g;->b(Ljava/lang/String;Lam/b;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "p"

    invoke-virtual {p0, p1, p2, v0}, LaM/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "f"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, LaM/g;->h:LaM/i;

    invoke-interface {v0, p1}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, LaM/g;->h:LaM/i;

    invoke-interface {v1, p1}, LaM/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lam/b;

    sget-object v2, LbD/eL;->u:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lam/b;->h(II)V

    const/16 v2, 0x90

    invoke-virtual {v1, v2, p1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0}, LaM/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    invoke-static {v1}, LaM/n;->a(Lam/b;)LaM/n;

    move-result-object v2

    invoke-virtual {v2, v4}, LaM/n;->a(I)V

    :try_start_37
    invoke-virtual {v0}, LaM/m;->d()LaJ/B;

    move-result-object v3

    if-eqz v3, :cond_4d

    const/4 v3, 0x3

    invoke-virtual {v0}, LaM/m;->d()LaJ/B;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->d(LaJ/B;)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lam/g;->a(Lam/b;)Lam/b;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lam/b;->b(ILam/b;)V

    :cond_4d
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LaM/n;->a(Z)V

    iget-object v0, p0, LaM/g;->h:LaM/i;

    invoke-interface {v0, v2}, LaM/i;->a(LaM/n;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_56} :catch_5c

    :goto_56
    iget-object v0, p0, LaM/g;->h:LaM/i;

    invoke-interface {v0, p1}, LaM/i;->e(Ljava/lang/String;)V

    goto :goto_7

    :catch_5c
    move-exception v0

    goto :goto_56
.end method

.method public b(Ljava/lang/String;Lam/b;)Z
    .registers 8

    const/16 v3, 0x90

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p2, v3}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_7

    :cond_10
    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p2, v3, p1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_19
    invoke-virtual {p2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, LaM/g;->h:LaM/i;

    invoke-interface {v0, v3}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v2

    goto :goto_7

    :cond_27
    iget-object v0, p0, LaM/g;->h:LaM/i;

    invoke-interface {v0, v3}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v4

    if-nez v4, :cond_51

    new-instance v0, LaM/n;

    invoke-direct {v0}, LaM/n;-><init>()V

    invoke-virtual {v0, v3}, LaM/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LaM/n;->a(I)V

    :goto_3a
    new-instance v3, Lam/b;

    sget-object v4, LbC/a;->b:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v3, v2, p2}, Lam/b;->b(ILam/b;)V

    invoke-virtual {v0, v3}, LaM/n;->b(Lam/b;)V

    invoke-virtual {v0, v1}, LaM/n;->a(Z)V

    iget-object v1, p0, LaM/g;->h:LaM/i;

    invoke-interface {v1, v0}, LaM/i;->a(LaM/n;)V

    move v0, v2

    goto :goto_7

    :cond_51
    new-instance v0, LaM/n;

    invoke-virtual {v4}, LaM/n;->d()Lam/b;

    move-result-object v3

    invoke-direct {v0, v3}, LaM/n;-><init>(Lam/b;)V

    goto :goto_3a
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/g;->j:Z

    iget-object v0, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x48d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_18
    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, LaM/g;->c:LaM/u;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaM/u;->a(I)V

    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, LaM/g;->c:LaM/u;

    invoke-interface {v0}, LaM/u;->c()Z

    move-result v0

    return v0
.end method

.method public g()LaM/i;
    .registers 2

    iget-object v0, p0, LaM/g;->h:LaM/i;

    return-object v0
.end method

.method public h()V
    .registers 4

    :try_start_0
    new-instance v0, Lam/b;

    sget-object v1, LbC/a;->f:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, LaM/g;->h:LaM/i;

    invoke-interface {v1, v0}, LaM/i;->b(Lam/b;)V

    const/4 v1, 0x2

    iget-boolean v2, p0, LaM/g;->i:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    iget-object v0, p0, LaM/g;->e:Lak/m;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, LaM/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_2a} :catch_32

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string v1, "MAPSError saving MyPlaces prefs"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    :catch_32
    move-exception v0

    const-string v1, "MAPSOOME saving MyPlaces prefs"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method public i()V
    .registers 3

    iget-boolean v0, p0, LaM/g;->j:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/g;->j:Z

    iget-object v0, p0, LaM/g;->g:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    :cond_c
    iget-object v0, p0, LaM/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->i()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public k()V
    .registers 4

    iget-object v0, p0, LaM/g;->e:Lak/m;

    iget-object v1, p0, LaM/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v1, v0

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_18
    sget-object v0, LbC/a;->f:Lam/e;

    invoke-static {v0, v1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->b(I)Z

    move-result v1

    iput-boolean v1, p0, LaM/g;->i:Z

    :cond_2c
    iget-object v1, p0, LaM/g;->h:LaM/i;

    invoke-interface {v1, v0}, LaM/i;->a(Lam/b;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_31} :catch_32

    goto :goto_d

    :catch_32
    move-exception v0

    const-string v1, "MAPSError loading MyPlaces prefs"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
