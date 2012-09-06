.class public Lcom/google/googlenav/settings/LegalActivity;
.super Lcom/google/googlenav/settings/GmmPreferenceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aR;


# instance fields
.field private b:Landroid/preference/PreferenceScreen;

.field private c:Landroid/preference/Preference;

.field private d:Ljava/lang/String;

.field private e:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 143
    new-instance v0, Lcom/google/googlenav/aP;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    .line 144
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 147
    const-string v1, ""

    const/16 v2, 0x263

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/googlenav/settings/D;

    invoke-direct {v5, p0, v0}, Lcom/google/googlenav/settings/D;-><init>(Lcom/google/googlenav/settings/LegalActivity;Lcom/google/googlenav/aP;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->e:Landroid/app/ProgressDialog;

    .line 154
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/settings/LegalActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/E;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/google/googlenav/settings/E;-><init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[BLcom/google/googlenav/settings/D;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LegalActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92
    :goto_9
    return-void

    .line 77
    :cond_a
    const/16 v0, 0x25d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LegalActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/PreferenceScreen;

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "terms"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    const/16 v1, 0x5a7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 85
    const/16 v1, 0x3e5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "notices"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 88
    const/16 v1, 0x25e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/PreferenceScreen;

    const-string v1, "web_history"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Landroid/preference/Preference;

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Landroid/preference/Preference;

    const/16 v1, 0x618

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v2, "terms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 110
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->d:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/google/googlenav/K;->W()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Ljava/lang/String;)V

    move v0, v1

    .line 132
    :goto_1d
    return v0

    .line 115
    :cond_1e
    const-string v2, "privacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 116
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->d:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/google/googlenav/K;->U()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Ljava/lang/String;)V

    move v0, v1

    .line 118
    goto :goto_1d

    .line 121
    :cond_37
    const-string v2, "notices"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 122
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->d:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/google/googlenav/K;->V()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Ljava/lang/String;)V

    move v0, v1

    .line 124
    goto :goto_1d

    .line 127
    :cond_50
    const-string v2, "web_history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/K;->X()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    move v0, v1

    .line 129
    goto :goto_1d

    .line 132
    :cond_67
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onResume()V

    .line 98
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    :goto_14
    return-void

    .line 101
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/settings/LegalActivity;->b:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/google/googlenav/settings/LegalActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_14
.end method
