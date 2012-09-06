.class public Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Lcom/acquariusoft/UpdateMe/a/c;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/a/b;

.field b:I

.field c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->a:Lcom/acquariusoft/UpdateMe/a/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b:I

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private c()V
    .registers 8

    const/4 v6, 0x0

    iput v6, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b:I

    const-string v0, "first_preferencescreen"

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acquariusoft/UpdateMe/b/e;

    new-instance v3, Lcom/acquariusoft/UpdateMe/AppPreference;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/acquariusoft/UpdateMe/AppPreference;-><init>(Landroid/content/Context;)V

    iget-object v4, v1, Lcom/acquariusoft/UpdateMe/b/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/acquariusoft/UpdateMe/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/acquariusoft/UpdateMe/AppPreference;->setKey(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/acquariusoft/UpdateMe/b/e;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/acquariusoft/UpdateMe/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, v1, Lcom/acquariusoft/UpdateMe/b/e;->h:Z

    if-eqz v4, :cond_4d

    invoke-virtual {v3}, Lcom/acquariusoft/UpdateMe/AppPreference;->a()V

    :cond_4d
    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/e;->f:Ljava/lang/String;

    const-string v4, "/mnt/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    const v1, 0x7f02001e

    invoke-virtual {v3, v1}, Lcom/acquariusoft/UpdateMe/AppPreference;->a(I)V

    :goto_5d
    invoke-virtual {v3, v6}, Lcom/acquariusoft/UpdateMe/AppPreference;->setPersistent(Z)V

    new-instance v1, Lcom/acquariusoft/UpdateMe/PreferencePage/j;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/j;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;)V

    invoke-virtual {v3, v1}, Lcom/acquariusoft/UpdateMe/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b:I

    goto :goto_14

    :cond_72
    const v1, 0x7f02001f

    invoke-virtual {v3, v1}, Lcom/acquariusoft/UpdateMe/AppPreference;->a(I)V

    goto :goto_5d
.end method


# virtual methods
.method public final synthetic a()V
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->a:Lcom/acquariusoft/UpdateMe/a/b;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/a/b;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->c()V

    return-void
.end method

.method public final b()V
    .registers 5

    new-instance v0, Lcom/acquariusoft/UpdateMe/a/b;

    invoke-direct {v0, p0}, Lcom/acquariusoft/UpdateMe/a/b;-><init>(Lcom/acquariusoft/UpdateMe/a/c;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->a:Lcom/acquariusoft/UpdateMe/a/b;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->a:Lcom/acquariusoft/UpdateMe/a/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/a/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_c

    :goto_6
    return-void

    :pswitch_7
    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->c()V

    goto :goto_6

    nop

    :pswitch_data_c
    .packed-switch 0x3e8
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->addPreferencesFromResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x2

    const/4 v1, 0x0

    const v0, 0x7f060017

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    :goto_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b()V

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b()V

    return-void
.end method
