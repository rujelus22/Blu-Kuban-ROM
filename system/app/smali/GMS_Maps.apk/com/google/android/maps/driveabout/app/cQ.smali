.class Lcom/google/android/maps/driveabout/app/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    check-cast p2, Lcom/google/android/maps/driveabout/publisher/d;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/publisher/d;->a()Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    .line 193
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->d(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a()Lo/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lo/o;)Lo/o;

    .line 194
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->f(Lcom/google/android/maps/driveabout/app/NavigationService;)Lo/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->e(Lcom/google/android/maps/driveabout/app/NavigationService;)Lo/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/r;->a(Lo/o;)V

    .line 195
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->f(Lcom/google/android/maps/driveabout/app/NavigationService;)Lo/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->e(Lcom/google/android/maps/driveabout/app/NavigationService;)Lo/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/r;->b(Lo/o;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    .line 201
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cq;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lo/o;)Lo/o;

    .line 202
    return-void
.end method
