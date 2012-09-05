.class Lcom/google/android/maps/driveabout/app/cQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cP;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cP;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/app/cP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/app/cP;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cP;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/app/cP;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/app/cP;->a:Landroid/location/Location;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/app/cP;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cP;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/app/cP;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/app/cP;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/location/Location;)V

    :cond_1d
    return-void
.end method
