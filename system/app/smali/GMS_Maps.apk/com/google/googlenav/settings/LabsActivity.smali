.class public Lcom/google/googlenav/settings/LabsActivity;
.super Lcom/google/googlenav/settings/GmmPreferenceActivity;
.source "SourceFile"


# instance fields
.field private b:Lak/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;-><init>()V

    .line 20
    invoke-static {}, Lak/g;->a()Lak/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LabsActivity;->b:Lak/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LabsActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    :cond_a
    return-void

    .line 33
    :cond_b
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LabsActivity;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/google/googlenav/settings/LabsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 35
    const/16 v0, 0x218

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LabsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/google/googlenav/settings/LabsActivity;->b:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()[Lak/f;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_26
    if-ge v0, v4, :cond_a

    aget-object v5, v3, v0

    .line 39
    new-instance v6, Lcom/google/googlenav/settings/c;

    const/16 v7, 0xf

    invoke-direct {v6, p0, v7}, Lcom/google/googlenav/settings/c;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-interface {v5}, Lak/f;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlenav/settings/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    const/16 v8, 0x21a

    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v5}, Lak/f;->a()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {v5}, Lak/f;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v6, v7}, Lcom/google/googlenav/settings/c;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    invoke-interface {v5}, Lak/f;->e()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/google/googlenav/settings/c;->setChecked(Z)V

    .line 48
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->b:Lak/g;

    invoke-virtual {v2}, Lak/g;->b()[Lak/f;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_5f

    aget-object v5, v3, v2

    .line 55
    invoke-interface {v5}, Lak/f;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 56
    invoke-interface {v5}, Lak/f;->e()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 57
    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->b:Lak/g;

    invoke-virtual {v2, v5}, Lak/g;->b(Lak/f;)V

    .line 58
    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->a:Lcom/google/googlenav/ui/v;

    const/16 v3, 0x21b

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v5}, Lak/f;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 68
    :goto_3e
    return v0

    .line 61
    :cond_3f
    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->b:Lak/g;

    invoke-virtual {v2, v5}, Lak/g;->a(Lak/f;)V

    .line 62
    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->a:Lcom/google/googlenav/ui/v;

    const/16 v3, 0x219

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v5}, Lak/f;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_3e

    .line 54
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_5f
    move v0, v1

    .line 68
    goto :goto_3e
.end method
