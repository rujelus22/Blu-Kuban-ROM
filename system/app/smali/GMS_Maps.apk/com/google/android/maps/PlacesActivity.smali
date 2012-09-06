.class public Lcom/google/android/maps/PlacesActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    sget-object v1, Lcom/google/googlenav/android/M;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcom/google/android/maps/PlacesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "featureSwitcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 34
    const-string v1, "featureSwitcher"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/maps/PlacesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 38
    const-string v1, "source"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :goto_3f
    invoke-virtual {p0, v0}, Lcom/google/android/maps/PlacesActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, v3, v3}, Lcom/google/android/maps/PlacesActivity;->overridePendingTransition(II)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/maps/PlacesActivity;->finish()V

    .line 50
    return-void

    .line 41
    :cond_49
    const-string v1, "source"

    const-string v2, "i"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f
.end method
