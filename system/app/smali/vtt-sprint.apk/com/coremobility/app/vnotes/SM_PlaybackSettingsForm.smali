.class public Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;
.super Lcom/coremobility/integration/app/CM_PreferenceForm;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/coremobility/app/vnotes/kc;


# instance fields
.field private a:Landroid/preference/ListPreference;

.field private b:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v0, v1

    array-length v3, v2

    if-eq v0, v3, :cond_1d

    const-string v0, ""

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_2f

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    aget-object v0, v1, v0

    goto :goto_1c

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2f
    const-string v0, ""

    goto :goto_1c
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_transcription_font"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->c:Lcom/coremobility/app/vnotes/ho;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ho;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->c:Lcom/coremobility/app/vnotes/ho;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/ho;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->b:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->b:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_13

    const v0, 0x7f0c01ff

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    return-void

    :cond_13
    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public final c_(I)V
    .registers 5

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a(Z)V

    return-void
.end method

.method public final h()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->addPreferencesFromResource(I)V

    const-string v0, "preference_transcription_font"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a()V

    :cond_1f
    const-string v0, "preference_show_transcriptions"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->b:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->b:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a(Z)V

    :cond_39
    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_transcription_font"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1c
    return v0

    :cond_1d
    const-string v2, "preference_show_transcriptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a(Z)V

    goto :goto_1c

    :cond_2f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_9

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/SM_PlaybackSettingsForm;->a()V

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onResume()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    const/16 v0, 0x74

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->b(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/kb;->a(Lcom/coremobility/app/vnotes/kc;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->b()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/kb;->b(Lcom/coremobility/app/vnotes/kc;)V

    return-void
.end method
