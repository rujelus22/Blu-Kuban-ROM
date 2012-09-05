.class Lcom/google/android/maps/driveabout/app/bZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eV;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bZ;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lu/P;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bZ;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dO;->a(Lu/P;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
