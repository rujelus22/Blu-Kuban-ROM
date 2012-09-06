.class Lcom/google/googlenav/settings/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/settings/B;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lcom/google/googlenav/settings/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/l;-><init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/i;)V
    .registers 3
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 899
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 901
    :cond_11
    return-void
.end method

.method public a(Lcom/google/googlenav/settings/C;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 814
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_a

    .line 887
    :goto_9
    return-void

    .line 818
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->i(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 819
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->j(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 820
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 821
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 822
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 824
    invoke-virtual {p1}, Lcom/google/googlenav/settings/C;->b()Lcom/google/googlenav/friend/i;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/friend/i;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 827
    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 828
    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->k(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/m;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/m;-><init>(Lcom/google/googlenav/settings/l;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 840
    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/friend/i;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 841
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->m(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/n;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/n;-><init>(Lcom/google/googlenav/settings/l;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 871
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->l(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 874
    :cond_a3
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {p1}, Lcom/google/googlenav/settings/C;->a()Lcom/google/googlenav/friend/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ag;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;I)V

    .line 876
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->n(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 877
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->o(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 878
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/settings/C;->a()Lcom/google/googlenav/friend/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ag;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 879
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 880
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->p(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->q(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 882
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->r(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 883
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->s(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 884
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/settings/C;->a()Lcom/google/googlenav/friend/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ag;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 885
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 886
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->t(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_9
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 791
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 793
    :cond_11
    return-void
.end method

.method public b(Lcom/google/googlenav/settings/C;)V
    .registers 3
    .parameter

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->u(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 892
    iget-object v0, p0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->u(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 894
    :cond_11
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 798
    return-void
.end method
