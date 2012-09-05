.class public Lcom/android/browser/preferences/AccessibilityPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccessibilityPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->addPreferencesFromResource(I)V

    .line 39
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 40
    .local v1, settings:Lcom/android/browser/BrowserSettings;
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    .line 42
    const-string v2, "min_font_size"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateMinFontSummary(Landroid/preference/Preference;I)V

    .line 45
    const-string v2, "text_zoom"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateTextZoomSummary(Landroid/preference/Preference;I)V

    .line 49
    const-string v2, "double_tap_zoom"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getDoubleTapZoom()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V

    .line 53
    const-string v2, "inverted_contrast"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateInvertedContrastSummary(Landroid/preference/Preference;I)V

    .line 56
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_8

    .line 80
    const/4 v1, 0x0

    .line 101
    .end local p2
    :goto_7
    return v1

    .line 83
    .restart local p2
    :cond_8
    const-string v1, "min_font_size"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v1, p2

    .line 84
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->getAdjustedMinimumFontSize(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateMinFontSummary(Landroid/preference/Preference;I)V

    .line 87
    :cond_22
    const-string v1, "text_zoom"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 88
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .local v0, settings:Lcom/android/browser/BrowserSettings;
    move-object v1, p2

    .line 89
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->getAdjustedTextZoom(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateTextZoomSummary(Landroid/preference/Preference;I)V

    .line 92
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    :cond_40
    const-string v1, "double_tap_zoom"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 93
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .restart local v0       #settings:Lcom/android/browser/BrowserSettings;
    move-object v1, p2

    .line 94
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->getAdjustedDoubleTapZoom(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V

    .line 97
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    :cond_5e
    const-string v1, "inverted_contrast"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 98
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateInvertedContrastSummary(Landroid/preference/Preference;I)V

    .line 101
    :cond_77
    const/4 v1, 0x1

    goto :goto_7
.end method

.method updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V
    .registers 8
    .parameter "pref"
    .parameter "doubleTapZoom"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method updateInvertedContrastSummary(Landroid/preference/Preference;I)V
    .registers 8
    .parameter "pref"
    .parameter "contrast"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method updateMinFontSummary(Landroid/preference/Preference;I)V
    .registers 8
    .parameter "pref"
    .parameter "minFontSize"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, c:Landroid/content/Context;
    const v1, 0x7f0c00c8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method updateTextZoomSummary(Landroid/preference/Preference;I)V
    .registers 8
    .parameter "pref"
    .parameter "textZoom"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
