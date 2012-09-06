.class public Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;
.super Landroid/preference/PreferenceFragment;


# static fields
.field public static a:I


# instance fields
.field b:Lcom/acquariusoft/UpdateMe/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    packed-switch p1, :pswitch_data_28

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string v0, ""

    :try_start_9
    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acquariusoft/UpdateMe/ao;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_16} :catch_22

    move-result-object v0

    :goto_17
    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->b:Lcom/acquariusoft/UpdateMe/f;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/f;->a()V

    goto :goto_3

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_17

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    sget-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->v:Z

    if-nez v0, :cond_1d

    const-string v0, "info"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :cond_1d
    const-string v0, "exit"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/q;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/r;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "reboot_type"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/s;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/s;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "info_prog"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060051

    invoke-virtual {p0, v2}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/t;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/t;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "downloaded_files"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/u;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/u;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "donate"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/v;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/v;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "reboot_recovery"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/w;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/w;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "donotkang"

    move-result-object v0

    return-void
.end method
