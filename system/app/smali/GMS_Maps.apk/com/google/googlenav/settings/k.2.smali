.class Lcom/google/googlenav/settings/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/settings/A;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lcom/google/googlenav/settings/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/k;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lax/j;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_11
    return-void
.end method

.method public a(Lcom/google/googlenav/settings/B;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->j(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p1}, Lcom/google/googlenav/settings/B;->b()Lax/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Lax/j;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/l;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/l;-><init>(Lcom/google/googlenav/settings/k;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Lax/j;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/m;-><init>(Lcom/google/googlenav/settings/k;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_a3
    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/settings/B;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_9
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_11
    return-void
.end method

.method public b(Lcom/google/googlenav/settings/B;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/settings/k;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_11
    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method
