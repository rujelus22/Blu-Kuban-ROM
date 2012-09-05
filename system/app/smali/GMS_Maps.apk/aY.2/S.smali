.class LaY/S;
.super Ljava/lang/Object;

# interfaces
.implements LaE/m;


# instance fields
.field final synthetic a:LaY/K;

.field private b:LaJ/B;

.field private c:J

.field private d:J

.field private e:Lt/y;


# direct methods
.method private constructor <init>(LaY/K;)V
    .registers 2

    iput-object p1, p0, LaY/S;->a:LaY/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaY/K;LaY/L;)V
    .registers 3

    invoke-direct {p0, p1}, LaY/S;-><init>(LaY/K;)V

    return-void
.end method

.method static synthetic a(LaY/S;J)J
    .registers 3

    iput-wide p1, p0, LaY/S;->c:J

    return-wide p1
.end method

.method static synthetic a(LaY/S;LaJ/B;)LaJ/B;
    .registers 2

    iput-object p1, p0, LaY/S;->b:LaJ/B;

    return-object p1
.end method

.method static synthetic a(LaY/S;Lt/y;)Lt/y;
    .registers 2

    iput-object p1, p0, LaY/S;->e:Lt/y;

    return-object p1
.end method

.method private a(JJJ)Z
    .registers 11

    const-wide/32 v2, 0x927c0

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

.method static synthetic b(LaY/S;J)J
    .registers 3

    iput-wide p1, p0, LaY/S;->d:J

    return-wide p1
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, LaY/S;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p0, v0}, LaY/S;->a(Lax/aP;)Z

    move-result v0

    iget-object v1, p0, LaY/S;->a:LaY/K;

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v1

    invoke-virtual {v1}, Lax/aS;->c()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, LaY/S;->a:LaY/K;

    invoke-virtual {v1}, LaY/K;->ag()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, LaY/S;->a:LaY/K;

    invoke-virtual {v1}, LaY/K;->ah()Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_2c
    iget-object v1, p0, LaY/S;->a:LaY/K;

    iget-object v1, v1, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, LaY/S;->a:LaY/K;

    invoke-static {v1}, LaY/K;->i(LaY/K;)Z

    move-result v1

    if-eqz v1, :cond_46

    if-eqz v0, :cond_46

    iget-object v0, p0, LaY/S;->a:LaY/K;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LaY/K;->a(LaY/K;Z)V

    :cond_46
    iget-object v0, p0, LaY/S;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, LaY/S;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->ao()Z

    :cond_53
    return-void
.end method

.method public a(ILaE/h;)V
    .registers 3

    return-void
.end method

.method public a(LaJ/B;ILt/y;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, LaY/S;->a:LaY/K;

    invoke-static {v1}, LaY/K;->d(LaY/K;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, LaY/T;

    invoke-direct {v2, p0, p1, p2, p3}, LaY/T;-><init>(LaY/S;LaJ/B;ILt/y;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 6

    invoke-virtual {p2}, LaE/h;->q()LaJ/B;

    move-result-object v0

    invoke-virtual {p2}, LaE/h;->i()I

    move-result v1

    invoke-virtual {p2}, LaE/h;->A()Lt/y;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LaY/S;->a(LaJ/B;ILt/y;)V

    return-void
.end method

.method public a(Lax/aP;)Z
    .registers 10

    const/4 v7, 0x1

    iget-object v0, p0, LaY/S;->b:LaJ/B;

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lax/aP;->t()J

    move-result-wide v1

    iget-wide v3, p0, LaY/S;->d:J

    iget-object v0, p0, LaY/S;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->bT()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LaY/S;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lax/aP;->w()V

    iget-object v0, p0, LaY/S;->a:LaY/K;

    invoke-static {v0}, LaY/K;->b(LaY/K;)Lax/r;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    :cond_28
    invoke-virtual {p1}, Lax/aP;->d()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaY/S;->b:LaJ/B;

    invoke-virtual {p1, v1}, Lax/aP;->a(LaJ/g;)V

    iget-object v1, p0, LaY/S;->e:Lt/y;

    invoke-virtual {p1, v1}, Lax/aP;->a(Lt/y;)V

    iget-wide v1, p0, LaY/S;->c:J

    invoke-virtual {p1, v1, v2}, Lax/aP;->c(J)V

    iget-wide v1, p0, LaY/S;->d:J

    invoke-virtual {p1, v1, v2}, Lax/aP;->a(J)V

    invoke-virtual {p1}, Lax/aP;->d()LaJ/B;

    move-result-object v1

    invoke-virtual {v1, v0}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, LaY/S;->a:LaY/K;

    invoke-static {v0, v7}, LaY/K;->b(LaY/K;Z)Z

    :cond_4f
    move v0, v7

    :goto_50
    return v0

    :cond_51
    const/4 v0, 0x0

    goto :goto_50
.end method
