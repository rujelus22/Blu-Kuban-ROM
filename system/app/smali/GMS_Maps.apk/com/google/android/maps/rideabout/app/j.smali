.class Lcom/google/android/maps/rideabout/app/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/app/NavigationService;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/j;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/rideabout/app/NavigationService;Lcom/google/android/maps/rideabout/app/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/j;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/j;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lcom/google/android/maps/rideabout/app/NavigationService;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
