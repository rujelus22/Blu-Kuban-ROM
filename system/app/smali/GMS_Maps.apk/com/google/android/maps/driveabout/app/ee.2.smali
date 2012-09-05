.class Lcom/google/android/maps/driveabout/app/ee;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/V;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ee;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ee;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->c(Lcom/google/android/maps/driveabout/vector/m;)V

    :cond_f
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 2

    return-void
.end method
