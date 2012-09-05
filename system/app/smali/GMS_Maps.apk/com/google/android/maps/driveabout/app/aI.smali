.class Lcom/google/android/maps/driveabout/app/aI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DirectionsListItem;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aI;->a:Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->a:Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V

    return-void
.end method
