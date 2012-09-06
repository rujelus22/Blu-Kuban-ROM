.class public Lcom/google/googlenav/settings/DisplaySettingsActivity;
.super Lcom/google/googlenav/settings/GmmPreferenceActivity;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;


# instance fields
.field private c:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 178
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->b:Ljava/util/Map;

    .line 180
    invoke-static {}, Lcom/google/googlenav/settings/f;->values()[Lcom/google/googlenav/settings/f;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 181
    sget-object v4, Lcom/google/googlenav/settings/DisplaySettingsActivity;->b:Ljava/util/Map;

    invoke-static {v3}, Lcom/google/googlenav/settings/f;->a(Lcom/google/googlenav/settings/f;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 183
    :cond_20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;-><init>()V

    .line 112
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 330
    invoke-static {}, Lcom/google/googlenav/ui/bJ;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 351
    :goto_8
    return v0

    .line 337
    :cond_9
    const-string v2, "settings_preference"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 341
    invoke-static {}, Lak/g;->a()Lak/g;

    move-result-object v3

    .line 342
    if-eqz v3, :cond_2e

    const/16 v4, 0x22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lak/g;->a(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 343
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "display_settings_zoom_buttons"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    :cond_2e
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->an()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-nez v3, :cond_45

    .line 351
    :goto_3e
    const-string v1, "display_settings_zoom_buttons"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_8

    :cond_45
    move v0, v1

    .line 349
    goto :goto_3e
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    .line 360
    const-string v0, "settings_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 364
    invoke-static {}, Lak/g;->a()Lak/g;

    move-result-object v1

    .line 365
    if-eqz v1, :cond_26

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lak/g;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "display_settings_scale_bar"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    :cond_26
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    .line 372
    const-string v2, "display_settings_scale_bar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 4
    .parameter

    .prologue
    .line 377
    const-string v0, "settings_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    const-string v1, "display_settings_units"

    sget-object v2, Lcom/google/googlenav/settings/f;->a:Lcom/google/googlenav/settings/f;

    invoke-virtual {v2}, Lcom/google/googlenav/settings/f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/google/googlenav/settings/f;->valueOf(Ljava/lang/String;)Lcom/google/googlenav/settings/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/settings/f;->a(Lcom/google/googlenav/settings/f;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Lcom/google/googlenav/settings/e;
    .registers 4
    .parameter

    .prologue
    .line 385
    const-string v0, "settings_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    const-string v1, "display_settings_bubble_action"

    sget-object v2, Lcom/google/googlenav/settings/e;->a:Lcom/google/googlenav/settings/e;

    invoke-virtual {v2}, Lcom/google/googlenav/settings/e;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lcom/google/googlenav/settings/e;->valueOf(Ljava/lang/String;)Lcom/google/googlenav/settings/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/16 v3, 0x62

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-super {p0, p1}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 290
    :goto_d
    return-void

    .line 195
    :cond_e
    const/16 v0, 0xfb

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->addPreferencesFromResource(I)V

    .line 197
    invoke-virtual {p0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->c:Landroid/preference/PreferenceScreen;

    .line 198
    invoke-virtual {p0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "settings_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->c:Landroid/preference/PreferenceScreen;

    const-string v1, "display_settings_zoom_buttons"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 202
    const/16 v1, 0x622

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    const/16 v1, 0x621

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {p0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    invoke-static {}, Lcom/google/googlenav/ui/bJ;->a()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 207
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    :goto_5b
    iget-object v0, p0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->c:Landroid/preference/PreferenceScreen;

    const-string v1, "display_settings_scale_bar"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 215
    const/16 v1, 0x4f2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    const/16 v1, 0x4f1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    invoke-static {p0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->c:Landroid/preference/PreferenceScreen;

    const-string v1, "display_settings_units"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 221
    iget-object v1, p0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->c:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->c:Landroid/preference/PreferenceScreen;

    const-string v1, "display_settings_bubble_action"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 257
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {}, Lcom/google/googlenav/settings/e;->values()[Lcom/google/googlenav/settings/e;

    move-result-object v3

    .line 260
    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    .line 261
    array-length v1, v3

    new-array v5, v1, [Ljava/lang/String;

    move v1, v2

    .line 262
    :goto_b0
    array-length v6, v4

    if-ge v1, v6, :cond_ce

    .line 263
    aget-object v6, v3, v1

    invoke-virtual {v6}, Lcom/google/googlenav/settings/e;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 264
    aget-object v6, v3, v1

    invoke-virtual {v6}, Lcom/google/googlenav/settings/e;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    .line 210
    :cond_c6
    invoke-static {p0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5b

    .line 266
    :cond_ce
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {p0}, Lcom/google/googlenav/settings/DisplaySettingsActivity;->d(Landroid/content/Context;)Lcom/google/googlenav/settings/e;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/google/googlenav/settings/e;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    const/16 v3, 0x61

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/googlenav/settings/e;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v1, Lcom/google/googlenav/settings/d;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/settings/d;-><init>(Lcom/google/googlenav/settings/DisplaySettingsActivity;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_d
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 296
    const-string v3, "display_settings_zoom_buttons"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 297
    iget-object v2, p0, Lcom/google/googlenav/settings/DisplaySettingsActivity;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ap()Lcom/google/googlenav/ui/bJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bJ;->b()V

    .line 298
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 299
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 300
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "a=s"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_4a

    const/16 v0, 0x48

    :goto_35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v2, "s"

    invoke-static {v5, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 325
    :cond_49
    :goto_49
    return v0

    .line 300
    :cond_4a
    const/16 v0, 0x49

    goto :goto_35

    .line 310
    :cond_4d
    const-string v3, "display_settings_scale_bar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 311
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 312
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 313
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "a=s"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_85

    const/16 v0, 0x4a

    :goto_70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v2, "s"

    invoke-static {v5, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 320
    goto :goto_49

    .line 313
    :cond_85
    const/16 v0, 0x4b

    goto :goto_70
.end method
