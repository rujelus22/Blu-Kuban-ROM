.class public Ly/k;
.super Ly/s;


# static fields
.field public static final a:Ly/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/k;

    invoke-direct {v0}, Ly/k;-><init>()V

    sput-object v0, Ly/k;->a:Ly/k;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "MENU_OPEN"

    return-object v0
.end method

.method public b()V
    .registers 3

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    new-instance v1, Ly/l;

    invoke-direct {v1, p0}, Ly/l;-><init>(Ly/k;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Ly/k;->c()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Ly/k;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->f()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->b()V

    goto :goto_d
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Ly/k;->f()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->c()V

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->e()V

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->g()V

    return-void
.end method

.method public m_()V
    .registers 2

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->c()V

    iget-object v0, p0, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->d()V

    return-void
.end method
