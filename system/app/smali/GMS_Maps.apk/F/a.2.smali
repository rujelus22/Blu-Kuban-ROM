.class public LF/a;
.super LF/b;


# instance fields
.field a:I

.field private b:Z

.field private c:Z

.field private final d:LF/T;

.field private final e:Landroid/location/LocationManager;

.field private final f:Laf/a;


# direct methods
.method public constructor <init>(LF/T;Landroid/content/Context;Laf/a;)V
    .registers 5

    const-string v0, "base_location_provider"

    invoke-direct {p0, v0, p1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    const/4 v0, 0x1

    iput v0, p0, LF/a;->a:I

    iput-object p1, p0, LF/a;->d:LF/T;

    iput-object p3, p0, LF/a;->f:Laf/a;

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, LF/a;->e:Landroid/location/LocationManager;

    return-void
.end method

.method private g()V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, LF/a;->f:Laf/a;

    instance-of v1, v1, LI/a;

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, LF/a;->f:Laf/a;

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v2

    iget-boolean v1, p0, LF/a;->b:Z

    if-eqz v1, :cond_65

    iget-object v1, p0, LF/a;->e:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :goto_1a
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {}, LF/d;->a()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_39

    new-instance v4, LF/R;

    invoke-direct {v4, v1}, LF/R;-><init>(Landroid/location/Location;)V

    sget-object v1, LF/S;->a:LF/S;

    invoke-virtual {v4, v1}, LF/R;->a(LF/S;)V

    iget-object v1, p0, LF/a;->d:LF/T;

    invoke-interface {v1, v4}, LF/T;->a(LF/R;)V

    :cond_39
    iget-boolean v1, p0, LF/a;->c:Z

    if-eqz v1, :cond_45

    iget-object v0, p0, LF/a;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_45
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v1, v2, v4

    invoke-static {}, LF/a;->h()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    new-instance v1, LF/R;

    invoke-direct {v1, v0}, LF/R;-><init>(Landroid/location/Location;)V

    sget-object v0, LF/S;->b:LF/S;

    invoke-virtual {v1, v0}, LF/R;->a(LF/S;)V

    iget-object v0, p0, LF/a;->d:LF/T;

    invoke-interface {v0, v1}, LF/T;->a(LF/R;)V

    goto :goto_7

    :cond_65
    move-object v1, v0

    goto :goto_1a
.end method

.method private static h()J
    .registers 2

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->B:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(LF/R;)V
    .registers 4

    invoke-virtual {p1}, LF/R;->a()LF/S;

    move-result-object v0

    sget-object v1, LF/S;->b:LF/S;

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, LF/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1}, LF/R;->a()LF/S;

    move-result-object v0

    sget-object v1, LF/S;->a:LF/S;

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/a;->b:Z

    const/4 v0, 0x2

    iput v0, p0, LF/a;->a:I

    :cond_1d
    invoke-super {p0, p1}, LF/b;->a(LF/R;)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, LF/a;->b:Z

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, LF/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, LF/a;->c:Z

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput p3, p0, LF/a;->a:I

    :cond_a
    invoke-super {p0, p1, p2, p3}, LF/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method a()Z
    .registers 3

    iget-boolean v0, p0, LF/a;->b:Z

    if-eqz v0, :cond_b

    iget v0, p0, LF/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, LF/a;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-super {p0}, LF/b;->b()V

    goto :goto_6
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, LF/a;->b:Z

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, LF/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, LF/a;->c:Z

    goto :goto_b
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, LF/a;->g()V

    return-void
.end method
