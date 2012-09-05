.class Lcom/google/android/maps/driveabout/app/bY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eA;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZZ)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bY;->d:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bY;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/bY;->b:Z

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/bY;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bY;->d:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bY;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bY;->b:Z

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/app/bY;->c:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method
