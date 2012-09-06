.class Lcom/anddoes/launcher/preference/ap;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field protected a:Lcom/anddoes/launcher/preference/PreferencesActivity;

.field protected b:Landroid/preference/PreferenceManager;

.field protected c:Lcom/anddoes/launcher/preference/h;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1562
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 1562
    invoke-direct {p0}, Lcom/anddoes/launcher/preference/ap;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 1612
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1570
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1572
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/ap;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/ap;->b:Landroid/preference/PreferenceManager;

    .line 1573
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/ap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/preference/PreferencesActivity;

    if-eqz v0, :cond_19

    .line 1574
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/ap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/preference/PreferencesActivity;

    iput-object v0, p0, Lcom/anddoes/launcher/preference/ap;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 1576
    :cond_19
    iget-object v0, p0, Lcom/anddoes/launcher/preference/ap;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    if-nez v0, :cond_24

    .line 1577
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/ap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1579
    :cond_24
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/ap;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/preference/ap;->c:Lcom/anddoes/launcher/preference/h;

    .line 1580
    iget-object v0, p0, Lcom/anddoes/launcher/preference/ap;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/ap;->c:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1}, Lcom/anddoes/launcher/preference/h;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ia;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1581
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1604
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 1605
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/ap;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1606
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1608
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 1595
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 1596
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/ap;->a()V

    .line 1597
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/ap;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1598
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1599
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1586
    invoke-virtual {p0, p2}, Lcom/anddoes/launcher/preference/ap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1587
    if-eqz v0, :cond_d

    .line 1588
    iget-object v1, p0, Lcom/anddoes/launcher/preference/ap;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/ap;->b:Landroid/preference/PreferenceManager;

    invoke-static {v1, v2, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a(Lcom/anddoes/launcher/preference/PreferencesActivity;Landroid/preference/PreferenceManager;Landroid/preference/Preference;)V

    .line 1590
    :cond_d
    return-void
.end method
