.class public Lcom/google/android/maps/driveabout/app/bt;
.super Lat/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/maps/driveabout/app/bu;

.field private e:Lcom/google/android/maps/driveabout/app/bs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bu;)V
    .registers 5

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bt;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bt;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bt;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/bt;->d:Lcom/google/android/maps/driveabout/app/bu;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x25

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    new-instance v0, Lam/b;

    sget-object v1, LbD/da;->l:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    new-instance v2, Lam/b;

    sget-object v3, LbD/x;->a:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILam/b;)V

    invoke-virtual {v0}, Lam/b;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v6, 0x1

    sget-object v0, LbD/da;->m:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return v6

    :cond_e
    new-instance v1, Lcom/google/android/maps/driveabout/app/bs;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bt;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bt;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bt;->c:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/app/bs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lam/b;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bt;->e:Lcom/google/android/maps/driveabout/app/bs;

    goto :goto_d
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bt;->d:Lcom/google/android/maps/driveabout/app/bu;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bt;->e:Lcom/google/android/maps/driveabout/app/bs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bt;->d:Lcom/google/android/maps/driveabout/app/bu;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/bu;->a(Lcom/google/android/maps/driveabout/app/bt;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bt;->d:Lcom/google/android/maps/driveabout/app/bu;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/bu;->b(Lcom/google/android/maps/driveabout/app/bt;)V

    goto :goto_d
.end method

.method public c()Lcom/google/android/maps/driveabout/app/bs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bt;->e:Lcom/google/android/maps/driveabout/app/bs;

    return-object v0
.end method
