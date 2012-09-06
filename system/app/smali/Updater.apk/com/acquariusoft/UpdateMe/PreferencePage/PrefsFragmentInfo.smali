.class public Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Lcom/acquariusoft/UpdateMe/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .registers 6

    const v4, 0x7f060012

    const/4 v3, 0x1

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "disable_check_rom"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->invalidateHeaders()V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->e()Z

    move-result v1

    if-eqz v1, :cond_79

    sget-boolean v1, Lcom/acquariusoft/UpdateMe/ao;->s:Z

    if-nez v1, :cond_2d

    sput-boolean v3, Lcom/acquariusoft/UpdateMe/ao;->s:Z

    if-nez v0, :cond_2d

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0, v1}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " v. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v4}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/a;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/a;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_78
    return-void

    :cond_79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v4}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/b;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/b;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_78
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ROM"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "disable_check_rom"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "first_preferencescreen"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_173

    new-instance v2, Lcom/acquariusoft/UpdateMe/IconPreference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/acquariusoft/UpdateMe/IconPreference;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/IconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Lcom/acquariusoft/UpdateMe/IconPreference;->setSelectable(Z)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_4d
    :goto_4d
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/b/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v4, v4, Lcom/acquariusoft/UpdateMe/b/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v4, 0x7f060040

    invoke-virtual {v3, v4}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/acquariusoft/UpdateMe/PreferencePage/c;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/c;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->e()Z

    move-result v2

    if-eqz v2, :cond_103

    sget-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->s:Z

    if-nez v2, :cond_ad

    sput-boolean v5, Lcom/acquariusoft/UpdateMe/ao;->s:Z

    if-nez v1, :cond_ad

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v1, v2}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_ad
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/d;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/d;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060015

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/f;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/f;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_103
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/g;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/g;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_147

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v2, "Homepage"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/h;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/h;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_147
    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_172

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/i;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/i;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_172
    return-void

    :cond_173
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    new-instance v2, Lcom/acquariusoft/UpdateMe/IconPreference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/acquariusoft/UpdateMe/IconPreference;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/IconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Lcom/acquariusoft/UpdateMe/IconPreference;->setSelectable(Z)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4d
.end method
