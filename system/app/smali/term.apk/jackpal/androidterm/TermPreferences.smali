.class public Ljackpal/androidterm/TermPreferences;
.super Landroid/preference/PreferenceActivity;
.source "TermPreferences.java"


# static fields
.field private static final ACTIONBAR_KEY:Ljava/lang/String; = "actionbar"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x4

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Ljackpal/androidterm/TermPreferences;->addPreferencesFromResource(I)V

    .line 38
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    if-ge v1, v4, :cond_1d

    .line 39
    invoke-virtual {p0}, Ljackpal/androidterm/TermPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "actionbar"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 43
    :cond_1d
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    if-lt v1, v4, :cond_2a

    .line 44
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v0

    .line 45
    .local v0, bar:Ljackpal/androidterm/compat/ActionBarCompat;
    if-eqz v0, :cond_2a

    .line 46
    invoke-virtual {v0, v3, v3}, Ljackpal/androidterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 49
    .end local v0           #bar:Ljackpal/androidterm/compat/ActionBarCompat;
    :cond_2a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 56
    :pswitch_c
    invoke-virtual {p0}, Ljackpal/androidterm/TermPreferences;->finish()V

    .line 57
    const/4 v0, 0x1

    goto :goto_b

    .line 53
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
