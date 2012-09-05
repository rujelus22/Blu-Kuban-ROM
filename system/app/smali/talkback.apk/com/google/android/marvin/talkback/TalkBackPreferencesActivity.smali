.class public Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private final a:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/google/android/marvin/talkback/o;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/o;-><init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private a(I)Landroid/preference/Preference;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceGroup;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1c

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(Landroid/preference/PreferenceGroup;)V

    :cond_18
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_1c
    instance-of v3, v0, Landroid/preference/ListPreference;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_18
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(Landroid/preference/PreferenceGroup;)V

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const v1, 0x7f070005

    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const v2, 0x7f070006

    invoke-direct {p0, v2}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const v4, 0x7f07000c

    invoke-direct {p0, v4}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(I)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_43

    :cond_3a
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_43
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/high16 v0, 0x7f07

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const v1, 0x7f070004

    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_6a

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6a
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    move v0, v3

    :goto_7f
    const v1, 0x7f070008

    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->a(I)Landroid/preference/Preference;

    move-result-object v1

    if-nez v0, :cond_8f

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8f
    return-void

    :cond_90
    const/4 v0, 0x1

    goto :goto_7f
.end method
