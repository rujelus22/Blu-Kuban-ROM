.class public abstract Lq/k;
.super LC/f;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Landroid/location/Location;

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, LC/f;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lq/k;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lq/k;->g:J

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/location/Location;
    .registers 4

    invoke-virtual {p0}, Lq/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/j;

    instance-of v2, v0, Lq/o;

    if-eqz v2, :cond_8

    check-cast v0, Lq/o;

    invoke-virtual {v0}, Lq/o;->a()Landroid/location/Location;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()I
    .registers 4

    invoke-virtual {p0}, Lq/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/j;

    instance-of v2, v0, Lq/z;

    if-eqz v2, :cond_8

    new-instance v2, Lcom/google/android/maps/driveabout/app/bh;

    check-cast v0, Lq/z;

    invoke-virtual {v0}, Lq/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bh;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bh;->e()I

    move-result v0

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/BufferedWriter;)V
    .registers 4

    iget-object v0, p0, Lq/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<destination uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq/k;->a:Ljava/lang/String;

    invoke-static {v1}, Lq/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_26
    const-string v0, "</event-log>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 3

    iget-object v0, p0, Lq/k;->b:Landroid/location/Location;

    iput-object v0, p0, Lq/k;->e:Landroid/location/Location;

    invoke-direct {p0}, Lq/k;->d()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lq/k;->d:Landroid/location/Location;

    invoke-super {p0, p1}, LC/f;->a(Ljava/io/File;)V

    return-void
.end method

.method public b()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lq/k;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lq/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5
.end method

.method public b(Ljava/io/File;)V
    .registers 9

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    const/4 v5, 0x0

    invoke-virtual {p0}, Lq/k;->c()Lu/P;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lu/P;->c()Lt/o;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v5, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v5, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lu/P;->c()Lt/o;

    move-result-object v1

    invoke-virtual {v1}, Lt/o;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, Lu/P;->c()Lt/o;

    move-result-object v0

    invoke-virtual {v0}, Lt/o;->b()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    :cond_33
    new-instance v0, LC/b;

    iget-object v1, p0, Lq/k;->c:Landroid/content/Context;

    iget-object v3, p0, Lq/k;->d:Landroid/location/Location;

    iget-object v4, p0, Lq/k;->e:Landroid/location/Location;

    invoke-direct {p0}, Lq/k;->i()I

    move-result v6

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, LC/b;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/location/Location;Landroid/location/Location;Landroid/location/Location;I)V

    invoke-virtual {v0}, LC/b;->a()V

    return-void
.end method

.method public c()Lu/P;
    .registers 3

    iget-object v0, p0, Lq/k;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/google/android/maps/driveabout/app/bh;

    iget-object v1, p0, Lq/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bh;->b()Lu/P;

    move-result-object v0

    goto :goto_5
.end method
