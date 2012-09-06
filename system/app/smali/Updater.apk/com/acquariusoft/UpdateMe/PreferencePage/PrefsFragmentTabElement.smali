.class public Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;
.super Landroid/preference/PreferenceFragment;


# instance fields
.field a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->a:Landroid/os/Bundle;

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->a:Landroid/os/Bundle;

    const-string v3, "pos"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/i;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "first_preferencescreen"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->a:Landroid/os/Bundle;

    const-string v4, "pos"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acquariusoft/UpdateMe/b/i;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_53

    return-void

    :cond_53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acquariusoft/UpdateMe/b/j;

    new-instance v5, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;-><init>(Landroid/content/Context;)V

    iput-object v1, v5, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->b:Lcom/acquariusoft/UpdateMe/b/j;

    iget-object v3, v1, Lcom/acquariusoft/UpdateMe/b/j;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/acquariusoft/UpdateMe/b/j;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    if-eqz v6, :cond_98

    iget-object v6, v1, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_98

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_98
    invoke-virtual {v5, v3}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/acquariusoft/UpdateMe/b/j;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a8

    iget-object v3, v1, Lcom/acquariusoft/UpdateMe/b/j;->n:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->a(Ljava/lang/String;)V

    :cond_a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->setKey(Ljava/lang/String;)V

    iput-boolean v8, v5, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->e:Z

    new-instance v3, Lcom/acquariusoft/UpdateMe/PreferencePage/ab;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/ab;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;)V

    iput-object v3, v5, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->c:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/acquariusoft/UpdateMe/PreferencePage/ac;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/ac;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;)V

    invoke-virtual {v5, v3}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/j;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_da

    iput-boolean v8, v5, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->g:Z

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/af;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/af;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;)V

    iput-object v1, v5, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->d:Landroid/view/View$OnClickListener;

    :cond_da
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4c
.end method
