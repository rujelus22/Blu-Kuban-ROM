.class Lcom/google/android/maps/driveabout/app/cB;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x0

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    return-void
.end method
