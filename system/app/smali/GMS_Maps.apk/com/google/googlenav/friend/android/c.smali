.class Lcom/google/googlenav/friend/android/c;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;
.implements Lax/bn;
.implements Lcom/google/googlenav/r;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/googlenav/friend/android/a;

.field private c:Lcom/google/googlenav/friend/android/d;

.field private d:Lcom/google/googlenav/friend/checkins/c;

.field private e:Lcom/google/googlenav/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/a;Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    iput-object p3, p0, Lcom/google/googlenav/friend/android/c;->c:Lcom/google/googlenav/friend/android/d;

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->d(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/android/p;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/c;->a:Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->d(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/android/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/p;->b()V

    :cond_14
    return-void
.end method

.method private a(Lcom/google/googlenav/a;Ljava/util/List;)V
    .registers 12

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {p2}, Lcom/google/googlenav/friend/android/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/a;->i()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x1f2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v8

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1f3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    const/4 v5, 0x0

    const v7, 0x7f020227

    move-object v3, v1

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    return-void
.end method

.method private a(Lcom/google/googlenav/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/c;->b(Lcom/google/googlenav/h;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/h;Z)V
    .registers 12

    const/4 v6, 0x0

    const/16 v0, 0x1f6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1f7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f02022a

    invoke-virtual {p1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    move-object v5, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    return-void
.end method

.method private a(Lcom/google/googlenav/h;ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->l()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;Z)V

    if-eqz p2, :cond_20

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/h;)V

    :goto_1f
    return-void

    :cond_20
    if-eqz p3, :cond_2a

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/h;Z)V

    :goto_26
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    goto :goto_1f

    :cond_2a
    const-string v0, "oo"

    invoke-static {v0}, Lax/aA;->d(Ljava/lang/String;)V

    goto :goto_26
.end method

.method private b(Lcom/google/googlenav/h;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/o;

    const/4 v1, 0x1

    new-array v1, v1, [Lax/aL;

    invoke-static {}, Lax/aL;->h()Lax/aL;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p1, v3, v1, v3}, Lcom/google/googlenav/o;-><init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/r;)V

    invoke-virtual {v0}, Lcom/google/googlenav/o;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/s;

    if-nez v0, :cond_20

    invoke-virtual {p0, v4, v3, v3, v3}, Lcom/google/googlenav/friend/android/c;->a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V

    :goto_1f
    return-void

    :cond_20
    iget-boolean v1, v0, Lcom/google/googlenav/s;->a:Z

    iget-object v2, v0, Lcom/google/googlenav/s;->b:Lcom/google/googlenav/a;

    iget-object v3, v0, Lcom/google/googlenav/s;->c:Lcom/google/googlenav/h;

    iget-object v0, v0, Lcom/google/googlenav/s;->d:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/googlenav/friend/android/c;->a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V

    goto :goto_1f
.end method


# virtual methods
.method public a(J)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    return-void
.end method

.method public a(Lam/b;Ljava/util/List;Lam/b;J)V
    .registers 15

    const/16 v8, 0x8

    const-wide v6, 0x412e848000000000L

    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_f
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "oo"

    invoke-static {v0}, Lax/aA;->d(Ljava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    new-instance v1, Lcom/google/googlenav/h;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/h;-><init>(Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->c:Lcom/google/googlenav/friend/android/d;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/d;->a()Lcom/google/googlenav/a;

    move-result-object v0

    if-eqz v0, :cond_36

    :cond_36
    iget-object v2, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v2}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/friend/checkins/a;->b(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v3}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/google/googlenav/ax;->a(Lam/b;ZLjava/lang/String;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lam/g;->h(Lam/b;I)Z

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/h;->i()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/googlenav/h;->j()Z

    iget-object v5, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    invoke-static {v5, v0}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/a;)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-eqz v2, :cond_78

    :cond_6d
    if-eqz v2, :cond_8b

    :goto_6f
    const-string v0, "oo"

    invoke-static {v0}, Lax/aA;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    goto :goto_21

    :cond_78
    invoke-virtual {p3, v8}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-virtual {p3, v8}, Lam/b;->b(I)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;Z)V

    :cond_87
    invoke-direct {p0, v1, v3, v4}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/h;ZZ)V

    goto :goto_21

    :cond_8b
    new-instance v0, LaJ/B;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    iget-object v2, v2, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    iget-object v3, v3, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-direct {v0, v2, v3}, LaJ/B;-><init>(II)V

    invoke-virtual {v1}, Lcom/google/googlenav/h;->f()LaJ/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(LaJ/B;LaJ/B;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_6f
.end method

.method public a(Lcom/google/googlenav/E;)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_26

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-lez v0, :cond_26

    new-instance v0, Lax/aS;

    invoke-direct {v0, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lax/aP;->a(Lcom/google/googlenav/a;I)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->c(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/checkins/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/checkins/b;->a()LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v3, v3}, LaY/a;->a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V

    :cond_26
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    return-void
.end method

.method public a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V
    .registers 8

    if-eqz p1, :cond_31

    const-string v0, "ca"

    invoke-static {v0}, Lax/aA;->d(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->e(Lam/b;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/googlenav/aJ;->a()Lcom/google/googlenav/aJ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aJ;->a(Lcom/google/googlenav/a;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->c(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/checkins/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/checkins/b;->a()LaY/a;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    invoke-direct {p0, p2, p4}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/a;Ljava/util/List;)V

    :goto_30
    return-void

    :cond_31
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    goto :goto_30
.end method
