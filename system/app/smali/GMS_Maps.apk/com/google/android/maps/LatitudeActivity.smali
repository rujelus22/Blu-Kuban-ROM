.class public Lcom/google/android/maps/LatitudeActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    sget-object v1, Lcom/google/googlenav/android/M;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    const-string v1, "com.google.googlenav.android.IntentProcessor.LATITUDE_LAUNCHER_ICON"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcom/google/android/maps/LatitudeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "featureSwitcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 34
    const-string v1, "featureSwitcher"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    :cond_31
    invoke-virtual {p0, v0}, Lcom/google/android/maps/LatitudeActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0, v3, v3}, Lcom/google/android/maps/LatitudeActivity;->overridePendingTransition(II)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/maps/LatitudeActivity;->finish()V

    .line 41
    return-void
.end method
