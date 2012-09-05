.class Lcom/google/android/maps/driveabout/app/ck;
.super Ljava/lang/Object;

# interfaces
.implements Lat/p;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/ci;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/app/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/ci;Lcom/google/android/maps/driveabout/app/cj;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/ck;-><init>(Lcom/google/android/maps/driveabout/app/ci;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public a(Lat/g;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/app/ci;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/ci;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/cl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/cl;-><init>(Lcom/google/android/maps/driveabout/app/ck;Lat/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lat/g;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/app/ci;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/ci;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/cm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/cm;-><init>(Lcom/google/android/maps/driveabout/app/ck;Lat/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
