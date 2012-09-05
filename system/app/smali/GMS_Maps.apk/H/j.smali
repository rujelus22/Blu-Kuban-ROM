.class public LH/j;
.super Ljava/lang/Object;


# instance fields
.field private a:LF/C;

.field private b:Lbc/a;

.field private c:Lbc/t;

.field private d:Lcom/google/android/maps/rideabout/app/c;

.field private final e:Lcom/google/android/maps/rideabout/app/a;

.field private final f:LH/h;

.field private final g:Lcom/google/android/maps/rideabout/app/l;


# direct methods
.method public constructor <init>(Lbc/d;Lcom/google/android/maps/rideabout/app/c;LH/h;Lcom/google/android/maps/rideabout/app/l;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/rideabout/app/a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/rideabout/app/a;-><init>(Lbc/d;Lcom/google/android/maps/rideabout/app/c;)V

    iput-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    iput-object p3, p0, LH/j;->f:LH/h;

    iput-object p4, p0, LH/j;->g:Lcom/google/android/maps/rideabout/app/l;

    return-void
.end method

.method private d()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v2

    :goto_13
    if-eqz v0, :cond_3d

    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v3

    iget-object v0, p0, LH/j;->b:Lbc/a;

    if-nez v0, :cond_38

    const/4 v0, 0x0

    :goto_20
    iget-object v4, p0, LH/j;->c:Lbc/t;

    invoke-static {v0, v4}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, LH/j;->d:Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/rideabout/app/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    iput-object v0, p0, LH/j;->c:Lbc/t;

    iput-object v3, p0, LH/j;->d:Lcom/google/android/maps/rideabout/app/c;

    :goto_35
    return v1

    :cond_36
    move v0, v1

    goto :goto_13

    :cond_38
    iget-object v0, p0, LH/j;->b:Lbc/a;

    iget-object v0, v0, Lbc/a;->a:Lbc/t;

    goto :goto_20

    :cond_3d
    move v1, v0

    goto :goto_35
.end method


# virtual methods
.method public a()LF/C;
    .registers 2

    iget-object v0, p0, LH/j;->f:LH/h;

    invoke-virtual {v0}, LH/h;->a()V

    iget-object v0, p0, LH/j;->a:LF/C;

    return-object v0
.end method

.method public a(LF/C;)V
    .registers 4

    iget-object v0, p0, LH/j;->f:LH/h;

    invoke-virtual {v0}, LH/h;->a()V

    iput-object p1, p0, LH/j;->a:LF/C;

    iget-object v0, p1, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_1e

    iget-object v0, p1, LF/C;->c:Lbc/a;

    iput-object v0, p0, LH/j;->b:Lbc/a;

    iget-object v0, p0, LH/j;->b:Lbc/a;

    iget-object v0, v0, Lbc/a;->a:Lbc/t;

    iget-object v1, p0, LH/j;->c:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    iput-object v0, p0, LH/j;->c:Lbc/t;

    :cond_1e
    return-void
.end method

.method public b()Lcom/google/android/maps/rideabout/app/a;
    .registers 2

    iget-object v0, p0, LH/j;->f:LH/h;

    invoke-virtual {v0}, LH/h;->a()V

    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    return-object v0
.end method

.method public b(LF/C;)V
    .registers 3

    iget-object v0, p0, LH/j;->f:LH/h;

    invoke-virtual {v0}, LH/h;->a()V

    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/app/a;->a(LF/C;)V

    return-void
.end method

.method public c()Lbc/a;
    .registers 2

    iget-object v0, p0, LH/j;->f:LH/h;

    invoke-virtual {v0}, LH/h;->a()V

    iget-object v0, p0, LH/j;->b:Lbc/a;

    return-object v0
.end method

.method public c(LF/C;)V
    .registers 7

    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->a()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, LF/C;->c:Lbc/a;

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    iget-object v1, p1, LF/C;->c:Lbc/a;

    if-eqz v1, :cond_1f

    iget-object v0, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->d()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    iget-object v3, p0, LH/j;->g:Lcom/google/android/maps/rideabout/app/l;

    iget-object v1, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/a;->h()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, LH/j;->e:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    :goto_32
    invoke-direct {p0}, LH/j;->d()Z

    move-result v4

    invoke-interface {v3, v1, v4, v2, v0}, Lcom/google/android/maps/rideabout/app/l;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_3a
    const/4 v1, 0x0

    goto :goto_32
.end method
