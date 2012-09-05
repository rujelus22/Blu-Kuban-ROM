.class Lcom/google/android/maps/driveabout/app/cP;
.super Ljava/lang/Object;

# interfaces
.implements Lx/af;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/location/Location;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cP;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cP;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/ad;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cP;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cQ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cQ;-><init>(Lcom/google/android/maps/driveabout/app/cP;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
