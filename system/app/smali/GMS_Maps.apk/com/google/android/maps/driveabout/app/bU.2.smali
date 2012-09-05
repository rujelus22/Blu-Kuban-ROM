.class Lcom/google/android/maps/driveabout/app/bU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    check-cast p2, Lcom/google/android/maps/driveabout/app/cI;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cI;->a()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationView;

    move-result-object v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v2, 0x7f030037

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setContentView(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v3, 0x7f0f00f6

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v3, 0x7f0f00f5

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    :cond_66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CHIME_BEFORE_SPEECH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_8b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Z)V

    goto/16 :goto_e

    :cond_96
    move v0, v1

    goto :goto_8b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;

    return-void
.end method
