.class Lcom/google/googlenav/settings/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "manual"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0, p2}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/settings/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_9
.end method
