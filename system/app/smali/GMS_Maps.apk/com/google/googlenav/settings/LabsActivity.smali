.class public Lcom/google/googlenav/settings/LabsActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private a:LaB/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-static {}, LaB/d;->a()LaB/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/LabsActivity;->a:LaB/d;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LabsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LabsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v0, 0x1e7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/LabsActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/LabsActivity;->a:LaB/d;

    invoke-virtual {v0}, LaB/d;->b()[LaB/c;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1f
    if-ge v0, v4, :cond_6a

    aget-object v5, v3, v0

    new-instance v6, Lcom/google/googlenav/settings/CheckBoxPreferenceWithMaxLines;

    const/16 v7, 0xf

    invoke-direct {v6, p0, v7}, Lcom/google/googlenav/settings/CheckBoxPreferenceWithMaxLines;-><init>(Landroid/content/Context;I)V

    invoke-interface {v5}, LaB/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlenav/settings/CheckBoxPreferenceWithMaxLines;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1e9

    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v5}, LaB/c;->a()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, LaB/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Lcom/google/googlenav/settings/CheckBoxPreferenceWithMaxLines;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {v5}, LaB/c;->e()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/google/googlenav/settings/CheckBoxPreferenceWithMaxLines;->setChecked(Z)V

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_6a
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/settings/LabsActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v3

    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->a:LaB/d;

    invoke-virtual {v2}, LaB/d;->b()[LaB/c;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_1a
    if-ge v2, v5, :cond_6b

    aget-object v6, v4, v2

    invoke-interface {v6}, LaB/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v6}, LaB/c;->e()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->a:LaB/d;

    invoke-virtual {v2, v6}, LaB/d;->b(LaB/c;)V

    const/16 v2, 0x1ea

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v6}, LaB/c;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :goto_4c
    return v0

    :cond_4d
    iget-object v2, p0, Lcom/google/googlenav/settings/LabsActivity;->a:LaB/d;

    invoke-virtual {v2, v6}, LaB/d;->a(LaB/c;)V

    const/16 v2, 0x1e8

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v6}, LaB/c;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    goto :goto_4c

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_6b
    move v0, v1

    goto :goto_4c
.end method
