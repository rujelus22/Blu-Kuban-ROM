.class public Ly/y;
.super Ly/E;


# static fields
.field public static final a:Ly/y;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/y;

    invoke-direct {v0}, Ly/y;-><init>()V

    sput-object v0, Ly/y;->a:Ly/y;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/E;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "WAIT_FOR_ACTIVITY_STATE"

    return-object v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Ly/y;->c:Lcom/google/android/maps/driveabout/app/cW;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Z)V

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/y;->c()V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Ly/y;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->c()V

    iget-object v0, p0, Ly/y;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->d(I)V

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Ly/y;->d:Lcom/google/android/maps/driveabout/app/cU;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ly/y;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_e
    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Ly/y;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Ly/y;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/y;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lcom/google/android/maps/driveabout/app/aL;)V

    iget-object v0, p0, Ly/y;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Ly/y;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(Z)V

    :cond_21
    iget-object v0, p0, Ly/y;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->l()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ly/y;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->j()V

    :cond_2e
    return-void
.end method
