.class Lcom/google/android/maps/driveabout/app/D;
.super Ljava/lang/Object;

# interfaces
.implements Lu/f;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/D;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/D;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    new-instance v1, Lcom/google/android/maps/driveabout/app/E;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/E;-><init>(Lcom/google/android/maps/driveabout/app/D;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
