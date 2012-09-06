.class Lcom/google/android/maps/driveabout/app/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dg;->a:Lcom/google/android/maps/driveabout/app/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->a:Lcom/google/android/maps/driveabout/app/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {}, Lcom/google/googlenav/K;->V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method
