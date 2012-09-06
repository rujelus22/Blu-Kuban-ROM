.class Lcom/google/android/maps/driveabout/app/cE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cD;)V
    .registers 2
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cE;->a:Lcom/google/android/maps/driveabout/app/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cE;->a:Lcom/google/android/maps/driveabout/app/cD;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cD;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cE;->a:Lcom/google/android/maps/driveabout/app/cD;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/app/cD;->a:Landroid/location/Location;

    if-ne v0, v1, :cond_1d

    .line 1236
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cE;->a:Lcom/google/android/maps/driveabout/app/cD;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cD;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cE;->a:Lcom/google/android/maps/driveabout/app/cD;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/app/cD;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->setCurrentRoadName(Landroid/location/Location;)V

    .line 1238
    :cond_1d
    return-void
.end method
