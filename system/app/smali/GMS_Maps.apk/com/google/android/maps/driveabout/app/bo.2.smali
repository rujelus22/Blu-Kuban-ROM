.class Lcom/google/android/maps/driveabout/app/bO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 204
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    .line 225
    :cond_e
    :goto_e
    return-void

    .line 207
    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 208
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    check-cast p2, Lcom/google/android/maps/driveabout/app/cw;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cw;->a()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 209
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationView;

    move-result-object v0

    if-nez v0, :cond_66

    .line 210
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v2, 0x7f040041

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setContentView(I)V

    .line 211
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v3, 0x7f10011f

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 212
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 213
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v3, 0x7f10011e

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 214
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    .line 216
    :cond_66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->d()V

    .line 219
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 220
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CHIME_BEFORE_SPEECH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 223
    :goto_8b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

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
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 234
    return-void
.end method
