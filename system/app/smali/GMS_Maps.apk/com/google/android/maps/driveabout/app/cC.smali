.class Lcom/google/android/maps/driveabout/app/cC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    check-cast p2, Lcom/google/android/maps/driveabout/publisher/d;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/publisher/d;->a()Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->c(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a()Lu/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lu/o;)Lu/o;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->e(Lcom/google/android/maps/driveabout/app/NavigationService;)Lu/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->d(Lcom/google/android/maps/driveabout/app/NavigationService;)Lu/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/r;->a(Lu/o;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->e(Lcom/google/android/maps/driveabout/app/NavigationService;)Lu/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->d(Lcom/google/android/maps/driveabout/app/NavigationService;)Lu/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/r;->b(Lu/o;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lu/o;)Lu/o;

    return-void
.end method
