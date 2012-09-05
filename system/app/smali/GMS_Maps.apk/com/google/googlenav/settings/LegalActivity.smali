.class public Lcom/google/googlenav/settings/LegalActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Lcom/google/googlenav/aR;


# instance fields
.field private a:Landroid/preference/PreferenceScreen;

.field private b:Landroid/preference/Preference;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/ProgressDialog;

.field private final e:Lcom/google/googlenav/ui/D;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LegalActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->e:Lcom/google/googlenav/ui/D;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/aP;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    const-string v1, ""

    const/16 v2, 0x22f

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/googlenav/settings/C;

    invoke-direct {v5, p0, v0}, Lcom/google/googlenav/settings/C;-><init>(Lcom/google/googlenav/settings/LegalActivity;Lcom/google/googlenav/aP;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->d:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/settings/LegalActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/settings/LegalActivity;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/D;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/google/googlenav/settings/D;-><init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[BLcom/google/googlenav/settings/C;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x229

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LegalActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "terms"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x4b0

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x324

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "notices"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x22a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Landroid/preference/PreferenceScreen;

    const-string v1, "web_history"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/Preference;

    const/16 v1, 0x508

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "terms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/M;->V()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    const-string v2, "privacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/M;->T()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1d

    :cond_37
    const-string v2, "notices"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/M;->U()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1d

    :cond_50
    const-string v2, "web_history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->W()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1d

    :cond_67
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_14
.end method
