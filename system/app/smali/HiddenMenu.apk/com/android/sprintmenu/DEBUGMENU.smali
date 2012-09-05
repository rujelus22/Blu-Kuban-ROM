.class public Lcom/android/sprintmenu/DEBUGMENU;
.super Landroid/preference/PreferenceActivity;
.source "DEBUGMENU.java"


# instance fields
.field mWiMAX_Menu1Pref:Landroid/preference/PreferenceScreen;

.field mWiMAX_Menu2Pref:Landroid/preference/PreferenceScreen;

.field mWiMAX_Menu3Pref:Landroid/preference/PreferenceScreen;

.field mWiMAX_Menu4Pref:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/high16 v6, 0x1000

    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 38
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v2, "Debug Menu"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 45
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 47
    const-string v3, "1x Engineering"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/sprintmenu/SprintMenu;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "screen"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 54
    const-string v3, "EVDO Engineering"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/sprintmenu/SprintMenu;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "screen"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 61
    const-string v3, "Configuration"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/sprintmenu/SprintMenu;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "screen"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 66
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 68
    const-string v3, "Bluetooth"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/sprintmenu/SprintMenu;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "screen"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 75
    const-string v3, "Data Status"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/sprintmenu/SprintMenu;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "screen"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu1Pref:Landroid/preference/PreferenceScreen;

    .line 167
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu1Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX_Menu1"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu1Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX DM"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu1Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu2Pref:Landroid/preference/PreferenceScreen;

    .line 172
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu2Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX_Menu2"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu2Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX IP"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu3Pref:Landroid/preference/PreferenceScreen;

    .line 177
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu3Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX_Menu3"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu3Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX CT"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu3Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu4Pref:Landroid/preference/PreferenceScreen;

    .line 182
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu4Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX_Menu4"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu4Pref:Landroid/preference/PreferenceScreen;

    const-string v3, "WiMAX MODE"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu4Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 189
    const-string v3, "WiMAX_Menu"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 190
    const v3, 0x7f050049

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 191
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/sprintmenu/WiMAX_Menu;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 214
    invoke-virtual {p0}, Lcom/android/sprintmenu/DEBUGMENU;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 215
    const-string v3, "Others_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 216
    const v3, 0x7f0500c8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 217
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/sprintmenu/Others;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/DEBUGMENU;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 268
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu1Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_17

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.wimax"

    const-string v3, "com.samsung.wimax.DM.DM"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/DEBUGMENU;->startActivity(Landroid/content/Intent;)V

    .line 314
    .end local v0           #intent:Landroid/content/Intent;
    :goto_16
    return v1

    .line 284
    :cond_17
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu2Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_34

    .line 288
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ip here"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.samsung.wimax"

    const-string v3, "com.samsung.wimax.staticip.staticip"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/DEBUGMENU;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 294
    .end local v0           #intent:Landroid/content/Intent;
    :cond_34
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu3Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_48

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.samsung.wimax"

    const-string v3, "com.samsung.wimax.CT.CT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/DEBUGMENU;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 303
    .end local v0           #intent:Landroid/content/Intent;
    :cond_48
    iget-object v2, p0, Lcom/android/sprintmenu/DEBUGMENU;->mWiMAX_Menu4Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_5c

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.samsung.wimax"

    const-string v3, "com.samsung.wimax.wibropath.WiBroPath"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/DEBUGMENU;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 314
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5c
    const/4 v1, 0x0

    goto :goto_16
.end method
