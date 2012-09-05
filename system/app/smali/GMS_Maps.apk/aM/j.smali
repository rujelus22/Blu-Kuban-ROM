.class public abstract LaM/j;
.super Ljava/lang/Object;

# interfaces
.implements LaM/i;
.implements LaM/y;


# static fields
.field private static final f:Lar/d;


# instance fields
.field private final a:I

.field private final b:LaM/w;

.field private final c:Ljava/util/List;

.field private d:LaM/o;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaM/k;

    invoke-direct {v0}, LaM/k;-><init>()V

    sput-object v0, LaM/j;->f:Lar/d;

    return-void
.end method

.method constructor <init>(LaM/w;LaM/o;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaM/j;->b:LaM/w;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/j;->c:Ljava/util/List;

    invoke-interface {p1, p0}, LaM/w;->a(LaM/y;)V

    iput-object p2, p0, LaM/j;->d:LaM/o;

    iput p3, p0, LaM/j;->a:I

    iput-boolean p4, p0, LaM/j;->e:Z

    return-void
.end method

.method public static a(Lam/e;LaM/w;LaM/o;)LaM/j;
    .registers 4

    sget-object v0, LbD/fC;->a:Lam/e;

    if-ne p0, v0, :cond_a

    new-instance v0, LaM/r;

    invoke-direct {v0, p1, p2}, LaM/r;-><init>(LaM/w;LaM/o;)V

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, LbD/dP;->a:Lam/e;

    if-ne p0, v0, :cond_14

    new-instance v0, LaM/p;

    invoke-direct {v0, p1, p2}, LaM/p;-><init>(LaM/w;LaM/o;)V

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private a(Ljava/lang/String;LaM/n;)V
    .registers 6

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p2}, LaM/n;->d()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lam/g;->a(Lam/b;)Lam/b;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_21

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p2}, LaM/n;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    iget-object v1, p0, LaM/j;->d:LaM/o;

    invoke-virtual {v1, p1, v0}, LaM/o;->a(Ljava/lang/String;Lam/b;)V

    goto :goto_6

    :catch_21
    move-exception v0

    goto :goto_6
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, LaM/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/l;

    invoke-interface {v0, p1}, LaM/l;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LaM/m;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, LaM/j;->b:LaM/w;

    iget v2, p0, LaM/j;->a:I

    invoke-interface {v1, v2, p1}, LaM/w;->a(ILjava/lang/String;)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, LaM/j;->c(Lam/b;)LaM/m;

    move-result-object v0

    goto :goto_7
.end method

.method public a()Ljava/util/List;
    .registers 4

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, LaM/j;->b:LaM/w;

    iget v2, p0, LaM/j;->a:I

    invoke-interface {v0, v2}, LaM/w;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {p0, v0}, LaM/j;->c(Lam/b;)LaM/m;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    return-object v1
.end method

.method public a(LaJ/B;)Ljava/util/List;
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, LaM/j;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [LaM/m;

    move v1, v2

    :goto_c
    array-length v0, v4

    if-ge v1, v0, :cond_28

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/m;

    invoke-virtual {v0}, LaM/m;->d()LaJ/B;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-virtual {v5, p1}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, LaM/m;->b(J)V

    :cond_22
    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_28
    sget-object v0, LaM/j;->f:Lar/d;

    invoke-static {v4, v0}, Lar/a;->a([Ljava/lang/Object;Lar/d;)V

    array-length v0, v4

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    array-length v1, v4

    :goto_33
    if-ge v2, v1, :cond_41

    aget-object v3, v4, v2

    invoke-virtual {v3}, LaM/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_41
    return-object v0
.end method

.method public a(LaM/l;)V
    .registers 3

    iget-object v0, p0, LaM/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract a(LaM/m;Lam/b;)V
.end method

.method public a(LaM/n;)V
    .registers 3

    invoke-virtual {p1}, LaM/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LaM/j;->a(Ljava/lang/String;LaM/n;)V

    invoke-direct {p0, v0}, LaM/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 2

    return-void
.end method

.method protected abstract a(Lam/b;Lam/b;)V
.end method

.method public a(LaM/m;)Z
    .registers 8

    const/4 v5, 0x2

    new-instance v0, Lam/b;

    sget-object v1, LbD/go;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0, p1, v0}, LaM/j;->a(LaM/m;Lam/b;)V

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lam/b;->b(ILjava/lang/String;)V

    new-instance v1, Lam/b;

    sget-object v2, LbD/go;->d:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v5, v0}, Lam/b;->b(ILam/b;)V

    iget-object v2, p0, LaM/j;->b:LaM/w;

    iget v3, p0, LaM/j;->a:I

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, LaM/w;->a(ILjava/lang/String;)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_34

    :try_start_2a
    invoke-static {v2}, Lam/g;->a(Lam/b;)Lam/b;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_41

    move-result-object v2

    invoke-virtual {p0, v2, v0}, LaM/j;->a(Lam/b;Lam/b;)V

    invoke-virtual {v1, v5, v2}, Lam/b;->b(ILam/b;)V

    :cond_34
    iget-boolean v0, p0, LaM/j;->e:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, LaM/j;->b:LaM/w;

    iget v2, p0, LaM/j;->a:I

    invoke-interface {v0, v2, v1}, LaM/w;->a(ILam/b;)Z

    move-result v0

    :goto_40
    return v0

    :catch_41
    move-exception v0

    const/4 v0, 0x0

    goto :goto_40

    :cond_44
    iget-object v0, p0, LaM/j;->b:LaM/w;

    iget v2, p0, LaM/j;->a:I

    invoke-interface {v0, v2, v1}, LaM/w;->b(ILam/b;)Z

    move-result v0

    goto :goto_40
.end method

.method public a_(ILjava/lang/String;)V
    .registers 4

    iget v0, p0, LaM/j;->a:I

    if-eq p1, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p2}, LaM/j;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, LaM/j;->b(LaM/m;)V

    invoke-direct {p0, p2}, LaM/j;->f(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public b(Ljava/lang/String;)LaM/n;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, LaM/j;->d:LaM/o;

    invoke-virtual {v1, p1}, LaM/o;->a(Ljava/lang/String;)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v0, LaM/n;

    invoke-direct {v0, v1}, LaM/n;-><init>(Lam/b;)V

    goto :goto_7
.end method

.method public b(LaM/l;)V
    .registers 3

    iget-object v0, p0, LaM/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(LaM/m;)V
    .registers 2

    return-void
.end method

.method public b(Lam/b;)V
    .registers 2

    return-void
.end method

.method protected abstract c(Lam/b;)LaM/m;
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, LaM/j;->b:LaM/w;

    iget v1, p0, LaM/j;->a:I

    invoke-interface {v0, v1}, LaM/w;->c(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaM/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, LaM/j;->d:LaM/o;

    invoke-virtual {v0, p1}, LaM/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected d()LaM/w;
    .registers 2

    iget-object v0, p0, LaM/j;->b:LaM/w;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, LaM/j;->d:LaM/o;

    invoke-virtual {v0, p1}, LaM/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
