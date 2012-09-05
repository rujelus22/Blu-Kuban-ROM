.class public Ly/B;
.super Ly/E;


# static fields
.field public static final a:Ly/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/B;

    invoke-direct {v0}, Ly/B;-><init>()V

    sput-object v0, Ly/B;->a:Ly/B;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/E;-><init>()V

    return-void
.end method


# virtual methods
.method protected Y()V
    .registers 4

    iget-object v0, p0, Ly/B;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ly/B;->f:Ly/p;

    sget-object v1, Ly/C;->a:Ly/C;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_10
    return-void
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "WAIT_FOR_LOCATION"

    return-object v0
.end method

.method protected aa()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Ly/B;->c:Lcom/google/android/maps/driveabout/app/cW;

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(I)V

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Ly/B;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ly/B;->f:Ly/p;

    sget-object v1, Ly/C;->a:Ly/C;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_10
    return-void
.end method
