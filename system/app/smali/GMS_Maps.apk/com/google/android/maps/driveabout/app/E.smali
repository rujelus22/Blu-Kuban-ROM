.class Lcom/google/android/maps/driveabout/app/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/D;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/D;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/D;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method
