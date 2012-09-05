.class public Lcom/google/android/maps/driveabout/app/SettingsActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/p;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/p;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/p;->a(Landroid/app/Activity;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/am;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "DriveAbout"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->addPreferencesFromResource(I)V

    const-string v0, "InfoCategory"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v2, "AboutDriveabout"

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {}, Ln/a;->b()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_32
    const-string v0, "TermsAndConditions"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/google/android/maps/driveabout/app/dp;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dp;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "Privacy"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/google/android/maps/driveabout/app/dq;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dq;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "Notices"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/google/android/maps/driveabout/app/dr;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "OneButtonRmi"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RmiPreference;

    if-eqz v0, :cond_77

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_81

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_77
    :goto_77
    return-void

    :cond_78
    new-instance v0, Lcom/google/android/maps/driveabout/app/do;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/do;-><init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_32

    :cond_81
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_92

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setEnabled(Z)V

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setSummary(I)V

    goto :goto_77

    :cond_92
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Lcom/google/android/maps/driveabout/app/am;)V

    goto :goto_77
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->a()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->c()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/SettingsActivity;->a:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->b()V

    return-void
.end method
