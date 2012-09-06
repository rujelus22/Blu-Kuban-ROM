.class LaM/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;


# instance fields
.field final synthetic a:LaM/X;

.field private b:Lat/B;

.field private c:J

.field private d:J

.field private e:Ln/B;


# direct methods
.method private constructor <init>(LaM/X;)V
    .registers 2
    .parameter

    .prologue
    .line 1823
    iput-object p1, p0, LaM/ae;->a:LaM/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaM/X;LaM/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1823
    invoke-direct {p0, p1}, LaM/ae;-><init>(LaM/X;)V

    return-void
.end method

.method static synthetic a(LaM/ae;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1823
    iput-wide p1, p0, LaM/ae;->c:J

    return-wide p1
.end method

.method static synthetic a(LaM/ae;Lat/B;)Lat/B;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1823
    iput-object p1, p0, LaM/ae;->b:Lat/B;

    return-object p1
.end method

.method static synthetic a(LaM/ae;Ln/B;)Ln/B;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1823
    iput-object p1, p0, LaM/ae;->e:Ln/B;

    return-object p1
.end method

.method private a(JJJ)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v2, 0x927c0

    .line 1930
    sub-long v0, p3, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    sub-long v0, p3, p5

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic b(LaM/ae;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1823
    iput-wide p1, p0, LaM/ae;->d:J

    return-wide p1
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 1868
    iget-object v0, p0, LaM/ae;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1869
    if-eqz v0, :cond_53

    .line 1870
    invoke-virtual {p0, v0}, LaM/ae;->a(Lcom/google/googlenav/friend/aK;)Z

    move-result v0

    .line 1873
    iget-object v1, p0, LaM/ae;->a:LaM/X;

    invoke-virtual {v1}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aM;->c()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1875
    iget-object v1, p0, LaM/ae;->a:LaM/X;

    invoke-virtual {v1}, LaM/X;->ag()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, LaM/ae;->a:LaM/X;

    invoke-virtual {v1}, LaM/X;->ah()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1877
    :cond_2c
    iget-object v1, p0, LaM/ae;->a:LaM/X;

    iget-object v1, v1, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    if-nez v1, :cond_53

    .line 1879
    iget-object v1, p0, LaM/ae;->a:LaM/X;

    invoke-static {v1}, LaM/X;->f(LaM/X;)Z

    move-result v1

    if-eqz v1, :cond_46

    if-eqz v0, :cond_46

    .line 1880
    iget-object v0, p0, LaM/ae;->a:LaM/X;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LaM/X;->a(LaM/X;Z)V

    .line 1884
    :cond_46
    iget-object v0, p0, LaM/ae;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->ag()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1885
    iget-object v0, p0, LaM/ae;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->an()Z

    .line 1891
    :cond_53
    return-void
.end method

.method public a(ILan/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1864
    return-void
.end method

.method public a(Lat/B;ILn/B;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1841
    const/4 v0, 0x0

    .line 1842
    iget-object v1, p0, LaM/ae;->a:LaM/X;

    invoke-static {v1}, LaM/X;->e(LaM/X;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, LaM/af;

    invoke-direct {v2, p0, p1, p2, p3}, LaM/af;-><init>(LaM/ae;Lat/B;ILn/B;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1859
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1832
    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 1833
    invoke-static {v0}, Lan/s;->a(Lan/s;)Lat/B;

    move-result-object v1

    invoke-static {v0}, Lan/s;->a(Landroid/location/Location;)I

    move-result v2

    invoke-static {v0}, Lan/s;->d(Landroid/location/Location;)Ln/B;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, LaM/ae;->a(Lat/B;ILn/B;)V

    .line 1837
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/aK;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1900
    iget-object v0, p0, LaM/ae;->b:Lat/B;

    if-eqz v0, :cond_51

    .line 1902
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->q()J

    move-result-wide v1

    iget-wide v3, p0, LaM/ae;->d:J

    iget-object v0, p0, LaM/ae;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->bO()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LaM/ae;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1904
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->t()V

    .line 1906
    iget-object v0, p0, LaM/ae;->a:LaM/X;

    invoke-static {v0}, LaM/X;->b(LaM/X;)Lcom/google/googlenav/friend/p;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    .line 1910
    :cond_28
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v0

    .line 1911
    iget-object v1, p0, LaM/ae;->b:Lat/B;

    invoke-virtual {p1, v1}, Lcom/google/googlenav/friend/aK;->a(Lat/g;)V

    .line 1912
    iget-object v1, p0, LaM/ae;->e:Ln/B;

    invoke-virtual {p1, v1}, Lcom/google/googlenav/friend/aK;->a(Ln/B;)V

    .line 1913
    iget-wide v1, p0, LaM/ae;->c:J

    invoke-virtual {p1, v1, v2}, Lcom/google/googlenav/friend/aK;->c(J)V

    .line 1914
    iget-wide v1, p0, LaM/ae;->d:J

    invoke-virtual {p1, v1, v2}, Lcom/google/googlenav/friend/aK;->a(J)V

    .line 1915
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1916
    iget-object v0, p0, LaM/ae;->a:LaM/X;

    invoke-static {v0, v7}, LaM/X;->b(LaM/X;Z)Z

    :cond_4f
    move v0, v7

    .line 1921
    :goto_50
    return v0

    :cond_51
    const/4 v0, 0x0

    goto :goto_50
.end method
