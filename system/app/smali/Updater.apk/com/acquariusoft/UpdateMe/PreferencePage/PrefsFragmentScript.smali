.class public Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Lcom/acquariusoft/UpdateMe/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private b()V
    .registers 7

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/b/a;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/b/a;-><init>()V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/b/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/b/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    const-string v0, "ruscripts"

    move-result-object v0

    const-string v0, "my_scripts"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v1, 0x0

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_31

    return-void

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acquariusoft/UpdateMe/b/b/b;

    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/b/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/n;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/n;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;)V

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2a
.end method

.method private c()V
    .registers 7

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const-string v0, "scripts"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v1, 0x0

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/b/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acquariusoft/UpdateMe/b/b/b;

    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/b/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/o;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/o;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;)V

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1a
.end method


# virtual methods
.method public final synthetic a()V
    .registers 1

    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->c()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_aa

    :goto_6
    return-void

    :pswitch_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1b
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><scripts>"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "</scripts>"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_42} :catch_a5

    :goto_42
    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->b()V

    goto :goto_6

    :cond_46
    :try_start_46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/b/b;

    const-string v3, "<script>"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<name><![CDATA["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]]></name>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<description><![CDATA["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]]></description>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<scriptCode><![CDATA["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]]></scriptCode>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "</script>"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_a4} :catch_a5

    goto :goto_34

    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Script"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/l;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/l;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "create_your_script"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/m;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/m;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->c()V

    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->b()V

    return-void
.end method
