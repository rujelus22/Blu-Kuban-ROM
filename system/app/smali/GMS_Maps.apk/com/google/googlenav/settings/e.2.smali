.class Lcom/google/googlenav/settings/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/PreferenceGroup;

.field final synthetic b:Lcom/google/googlenav/settings/LatitudeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Landroid/preference/PreferenceGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    iput-object p2, p0, Lcom/google/googlenav/settings/e;->a:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/o;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/settings/o;->c()V

    iget-object v0, p0, Lcom/google/googlenav/settings/e;->a:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->b(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/e;->b:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_9
.end method
