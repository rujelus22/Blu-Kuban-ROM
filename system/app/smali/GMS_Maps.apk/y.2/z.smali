.class public Ly/z;
.super Ly/E;


# static fields
.field public static final a:Ly/z;


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/z;

    invoke-direct {v0}, Ly/z;-><init>()V

    sput-object v0, Ly/z;->a:Ly/z;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/E;-><init>()V

    return-void
.end method

.method static synthetic a(Ly/z;Z)Z
    .registers 2

    iput-boolean p1, p0, Ly/z;->h:Z

    return p1
.end method


# virtual methods
.method public C()Z
    .registers 2

    iget-boolean v0, p0, Ly/z;->h:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/z;->h:Z

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Ly/E;->C()Z

    move-result v0

    goto :goto_8
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "WAIT_FOR_DIRECTIONS"

    return-object v0
.end method

.method protected a(Lu/g;)V
    .registers 7

    const v4, 0x7f0b00ad

    const/4 v3, 0x1

    invoke-virtual {p1}, Lu/g;->n()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Ly/z;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {p1}, Lu/g;->f()[Lu/P;

    move-result-object v1

    new-instance v2, Ly/A;

    invoke-direct {v2, p0}, Ly/A;-><init>(Ly/z;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/google/android/maps/driveabout/app/cU;->a([Lu/P;ZZLcom/google/android/maps/driveabout/app/cV;)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    iget-object v1, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->B()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    :try_start_2a
    iget-object v1, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_34
    .catch Ljava/net/URISyntaxException; {:try_start_2a .. :try_end_34} :catch_57

    move-result-object v0

    :cond_35
    :goto_35
    iget-object v1, p0, Ly/z;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->c()V

    iget-object v1, p0, Ly/z;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/cU;->h()V

    if-nez v0, :cond_4b

    iget-object v0, p0, Ly/z;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {p0, p1}, Ly/z;->c(Lu/g;)I

    move-result v1

    invoke-interface {v0, v4, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(II)V

    goto :goto_18

    :cond_4b
    iput-boolean v3, p0, Ly/z;->h:Z

    iget-object v1, p0, Ly/z;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {p0, p1}, Ly/z;->c(Lu/g;)I

    move-result v2

    invoke-interface {v1, v4, v2, v0}, Lcom/google/android/maps/driveabout/app/cU;->a(IILandroid/content/Intent;)V

    goto :goto_18

    :catch_57
    move-exception v1

    goto :goto_35
.end method

.method protected a(Lu/x;[Lu/x;)V
    .registers 6

    iget-object v0, p0, Ly/z;->f:Ly/p;

    sget-object v1, Ly/y;->a:Ly/y;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected aa()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    iget-object v1, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->e()Lu/a;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v0, p0, Ly/z;->g:Lu/r;

    invoke-virtual {v0, v1}, Lu/r;->a(Lu/a;)V

    :goto_1b
    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/z;->c()V

    return-void

    :cond_24
    iget-object v1, p0, Ly/z;->g:Lu/r;

    iget-object v2, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->z()[Lu/P;

    move-result-object v2

    iget-object v3, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v3

    iget-object v4, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aL;->C()[Lu/b;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lu/r;->a(Ls/b;[Lu/P;I[Lu/b;)V

    const-string v1, "i"

    invoke-virtual {v0}, Ls/b;->b()Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x1

    :goto_44
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    goto :goto_1b

    :cond_48
    const/4 v0, 0x0

    goto :goto_44

    :cond_4a
    const-string v0, "F"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public c()V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_68

    move v0, v1

    :goto_c
    iget-object v4, p0, Ly/z;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/app/a;->b(Z)V

    if-eqz v0, :cond_74

    iget-object v0, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    invoke-static {}, Lz/n;->c()Lcom/google/android/maps/driveabout/vector/dp;

    move-result-object v4

    sget-object v5, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/maps/driveabout/vector/dp;->a(Lt/L;Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/do;->b()I

    move-result v0

    const/16 v4, 0x10

    if-gt v0, v4, :cond_6a

    :goto_41
    iget-object v0, p0, Ly/z;->b:Landroid/content/Context;

    invoke-static {v3}, Lu/O;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    const-string v2, "SatelliteImagery"

    invoke-virtual {v0, v2, v1}, Lz/t;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Ly/z;->h(Z)V

    iget-object v0, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_67

    packed-switch v3, :pswitch_data_76

    const v0, 0x7f0b005a

    :goto_62
    iget-object v1, p0, Ly/z;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/cW;->a(I)V

    :cond_67
    return-void

    :cond_68
    move v0, v2

    goto :goto_c

    :cond_6a
    move v1, v2

    goto :goto_41

    :pswitch_6c
    const v0, 0x7f0b005b

    goto :goto_62

    :pswitch_70
    const v0, 0x7f0b005c

    goto :goto_62

    :cond_74
    move v1, v2

    goto :goto_41

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_6c
        :pswitch_70
    .end packed-switch
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Ly/z;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Ly/z;->f:Ly/p;

    sget-object v1, Ly/y;->a:Ly/y;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_18
    return-void
.end method

.method public e()V
    .registers 2

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d()V

    :cond_d
    return-void
.end method
