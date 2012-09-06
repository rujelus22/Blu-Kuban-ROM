.class Lcom/google/android/maps/driveabout/app/cD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/ae;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/location/Location;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cD;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cD;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr/ac;)V
    .registers 4
    .parameter

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cD;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cE;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cE;-><init>(Lcom/google/android/maps/driveabout/app/cD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->post(Ljava/lang/Runnable;)Z

    .line 1240
    return-void
.end method
