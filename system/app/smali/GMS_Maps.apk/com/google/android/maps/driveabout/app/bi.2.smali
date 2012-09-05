.class public Lcom/google/android/maps/driveabout/app/bi;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lu/P;

.field private b:Lu/P;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Lu/b;

.field private f:Landroid/content/Intent;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lu/P;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Lu/P;->c()Lt/o;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bh;->a(Lt/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_d
    invoke-virtual {p1}, Lu/P;->d()Lu/Q;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1a
    invoke-virtual {p1}, Lu/P;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p2, p5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_23
    invoke-virtual {p1}, Lu/P;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2, p6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2c
    return-void
.end method


# virtual methods
.method a()Landroid/net/Uri;
    .registers 8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->a:[Lu/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->a:[Lu/P;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lu/P;->c()Lt/o;

    move-result-object v1

    if-eqz v1, :cond_38

    const-string v3, "altvia"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bh;->a(Lt/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->a:[Lu/P;

    array-length v1, v1

    if-ge v0, v1, :cond_50

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->a:[Lu/P;

    aget-object v1, v1, v0

    const-string v3, "q"

    const-string v4, "ll"

    const-string v5, "title"

    const-string v6, "token"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bi;->a(Lu/P;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->b:Lu/P;

    if-eqz v0, :cond_62

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->b:Lu/P;

    const-string v3, "s"

    const-string v4, "sll"

    const-string v5, "stitle"

    const-string v6, "stoken"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bi;->a(Lu/P;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bi;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a8

    const-string v0, "mode"

    const-string v1, "w"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->d:Ljava/lang/String;

    if-eqz v0, :cond_79

    const-string v0, "entry"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_79
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->e:[Lu/b;

    if-eqz v0, :cond_88

    const-string v0, "opt"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->e:[Lu/b;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bh;->a([Lu/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_88
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->f:Landroid/content/Intent;

    if-eqz v0, :cond_98

    const-string v0, "r"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->f:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_98
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bi;->g:Z

    if-eqz v0, :cond_a3

    const-string v0, "goff"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_a3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_a8
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bi;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6e

    const-string v0, "mode"

    const-string v1, "b"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_6e
.end method

.method a(I)Lcom/google/android/maps/driveabout/app/bi;
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/bi;->c:I

    return-object p0
.end method

.method a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/bi;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bi;->f:Landroid/content/Intent;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bi;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bi;->d:Ljava/lang/String;

    return-object p0
.end method

.method a(Lu/P;)Lcom/google/android/maps/driveabout/app/bi;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lu/P;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->a:[Lu/P;

    return-object p0
.end method

.method a(Z)Lcom/google/android/maps/driveabout/app/bi;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/bi;->g:Z

    return-object p0
.end method

.method a([Lu/P;)Lcom/google/android/maps/driveabout/app/bi;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bi;->a:[Lu/P;

    return-object p0
.end method

.method a([Lu/b;)Lcom/google/android/maps/driveabout/app/bi;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bi;->e:[Lu/b;

    return-object p0
.end method

.method b(Lu/P;)Lcom/google/android/maps/driveabout/app/bi;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bi;->b:Lu/P;

    return-object p0
.end method
