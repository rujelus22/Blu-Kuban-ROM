.class Ly/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eQ;


# instance fields
.field final synthetic a:Ly/s;

.field private final b:Lcom/google/android/maps/driveabout/app/de;


# direct methods
.method public constructor <init>(Ly/s;Lcom/google/android/maps/driveabout/app/de;)V
    .registers 3

    iput-object p1, p0, Ly/w;->a:Ly/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly/w;->b:Lcom/google/android/maps/driveabout/app/de;

    return-void
.end method

.method private a()Z
    .registers 4

    iget-object v0, p0, Ly/w;->a:Ly/s;

    iget-object v0, v0, Ly/s;->b:Landroid/content/Context;

    const-string v1, "RmiMail"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_21

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Ly/w;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_14
    iget-object v2, p0, Ly/w;->b:Lcom/google/android/maps/driveabout/app/de;

    new-instance v3, Ly/x;

    iget-object v4, p0, Ly/w;->a:Ly/s;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ly/x;-><init>(Ly/s;Ly/t;)V

    invoke-virtual {v2, v0, v3}, Lcom/google/android/maps/driveabout/app/de;->a(ZLaT/b;)V

    :cond_21
    iget-object v0, p0, Ly/w;->a:Ly/s;

    iget-object v0, v0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->c(Z)V

    return-void

    :cond_29
    move v0, v1

    goto :goto_14
.end method
