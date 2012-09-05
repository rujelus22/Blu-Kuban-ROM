.class Lcom/google/android/maps/driveabout/app/dh;
.super Lz/d;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dB;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/dD;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/dg;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dg;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dB;Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dh;->c:Lcom/google/android/maps/driveabout/app/dg;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dh;->a:Lcom/google/android/maps/driveabout/app/dB;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/dh;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0, p2}, Lz/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lz/n;->b()Lz/l;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dh;->c:Lcom/google/android/maps/driveabout/app/dg;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/dg;->a(Lcom/google/android/maps/driveabout/app/dg;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/content/Context;Lz/l;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dh;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-virtual {v0}, Lz/l;->C()Lz/m;

    move-result-object v0

    invoke-virtual {v0}, Lz/m;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dB;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dh;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->b()V

    :cond_28
    return-void
.end method
