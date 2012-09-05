.class public Lcom/sprint/dsa/PowerConfigActivity;
.super Landroid/app/ListActivity;
.source "PowerConfigActivity.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/DiagnosticListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

.field private mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

.field private mListAdapter:Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;

.field private mPowerConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private powerConfigKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    const-string v2, "screen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 51
    const-string v2, "sync"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 52
    const-string v2, "wimax"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 53
    const-string v2, "3g"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 54
    const-string v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 55
    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 56
    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->powerConfigKeys:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/PowerConfigActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public applyLowPowerMode()V
    .registers 6

    .prologue
    .line 188
    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->getCurrent(Landroid/content/Context;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v0

    .line 190
    .local v0, current:Lcom/sprint/dsa/diagnostics/PowerConfig;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PowerConfigActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/PowerConfig;->toPreferences(Landroid/content/SharedPreferences;)V

    .line 193
    sget-object v2, Lcom/sprint/dsa/diagnostics/PowerConfig;->LOW_POWER_MODE:Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-virtual {v2, p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->apply(Landroid/content/Context;)V

    .line 195
    const v2, 0x7f0800be

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PowerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/sprint/dsa/PowerConfigActivity;->showProgressThenRefresh(Ljava/lang/String;J)V

    .line 197
    sget-object v2, Lcom/sprint/dsa/diagnostics/PowerConfig;->LOW_POWER_MODE:Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PowerConfigActivity;->refreshButtonState(Lcom/sprint/dsa/diagnostics/PowerConfig;)V

    .line 198
    return-void
.end method

.method public isLowPowerMode()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mPowerConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mPowerConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->isLowPower()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x3

    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/sprint/dsa/PowerConfigActivity;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0, v6}, Lcom/sprint/dsa/PowerConfigActivity;->requestWindowFeature(I)Z

    .line 68
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/sprint/dsa/PowerConfigActivity;->setContentView(I)V

    .line 69
    const v5, 0x7f020014

    invoke-virtual {p0, v6, v5}, Lcom/sprint/dsa/PowerConfigActivity;->setFeatureDrawableResource(II)V

    .line 72
    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->getStubs(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, allStubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, stubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    iget-object v6, p0, Lcom/sprint/dsa/PowerConfigActivity;->powerConfigKeys:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_24
    if-lt v5, v7, :cond_5a

    .line 81
    new-instance v5, Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-direct {v5, p0, v4}, Lcom/sprint/dsa/diagnostics/Diagnostics;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    .line 82
    iget-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v5}, Lcom/sprint/dsa/diagnostics/Diagnostics;->runTests()V

    .line 83
    iget-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v5, p0}, Lcom/sprint/dsa/diagnostics/Diagnostics;->addListener(Lcom/sprint/dsa/diagnostics/DiagnosticListener;)V

    .line 86
    new-instance v5, Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    iget-object v6, p0, Lcom/sprint/dsa/PowerConfigActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-direct {v5, v6}, Lcom/sprint/dsa/diagnostics/SettingsReceiver;-><init>(Lcom/sprint/dsa/diagnostics/Diagnostics;)V

    iput-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    .line 87
    iget-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v5}, Lcom/sprint/dsa/diagnostics/Diagnostics;->createReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 88
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/sprint/dsa/PowerConfigActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    new-instance v5, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;

    iget-object v6, p0, Lcom/sprint/dsa/PowerConfigActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-direct {v5, p0, v6}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;-><init>(Landroid/app/Activity;Lcom/sprint/dsa/diagnostics/Diagnostics;)V

    iput-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;

    .line 92
    iget-object v5, p0, Lcom/sprint/dsa/PowerConfigActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;

    invoke-virtual {p0, v5}, Lcom/sprint/dsa/PowerConfigActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    return-void

    .line 74
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_5a
    aget-object v2, v6, v5

    .line 75
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_60
    :goto_60
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_69

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 75
    :cond_69
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    .line 76
    .local v3, stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-virtual {v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 77
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 120
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mIntentReceiver:Lcom/sprint/dsa/diagnostics/SettingsReceiver;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PowerConfigActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_c
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "listView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/sprint/dsa/PowerConfigActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    invoke-virtual {v1, p3}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getDiagnostic(I)Lcom/sprint/dsa/diagnostics/Diagnostic;

    move-result-object v0

    .line 137
    .local v0, diagnostic:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;->onListClick(Landroid/view/View;)Z

    .line 138
    return-void
.end method

.method public onLowPowerMode(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 168
    new-instance v0, Lcom/sprint/dsa/PowerConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PowerConfigActivity$1;-><init>(Lcom/sprint/dsa/PowerConfigActivity;)V

    .line 173
    .local v0, callback:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;
    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->getCurrent(Landroid/content/Context;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v1

    .line 175
    .local v1, current:Lcom/sprint/dsa/diagnostics/PowerConfig;
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, description:Ljava/lang/String;
    new-instance v3, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;

    sget-object v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->LOW_POWER_MODE:Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-direct {v3, v4, v2, v5, v1}, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/PowerConfig;Lcom/sprint/dsa/diagnostics/PowerConfig;)V

    .line 179
    .local v3, parameters:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;
    invoke-static {p0, v3, v0}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;)Lcom/sprint/dsa/diagnostics/PowerModeDialog;

    .line 180
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 131
    :goto_7
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 128
    :pswitch_c
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->refresh()V

    goto :goto_7

    .line 126
    :pswitch_data_10
    .packed-switch 0x7f0b0055
        :pswitch_c
    .end packed-switch
.end method

.method public onRestorePowerMode(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    .line 227
    new-instance v0, Lcom/sprint/dsa/PowerConfigActivity$3;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PowerConfigActivity$3;-><init>(Lcom/sprint/dsa/PowerConfigActivity;)V

    .line 232
    .local v0, callback:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sprint/dsa/PowerConfigActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 233
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/sprint/dsa/diagnostics/PowerConfig;->inPreferences(Landroid/content/SharedPreferences;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 234
    invoke-static {v4}, Lcom/sprint/dsa/diagnostics/PowerConfig;->fromPreferences(Landroid/content/SharedPreferences;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v5

    .line 235
    .local v5, previous:Lcom/sprint/dsa/diagnostics/PowerConfig;
    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->getCurrent(Landroid/content/Context;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v1

    .line 237
    .local v1, current:Lcom/sprint/dsa/diagnostics/PowerConfig;
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800b9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, description:Ljava/lang/String;
    new-instance v3, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;

    invoke-direct {v3, v6, v2, v5, v1}, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/PowerConfig;Lcom/sprint/dsa/diagnostics/PowerConfig;)V

    .line 241
    .local v3, parameters:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;
    invoke-static {p0, v3, v0}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;)Lcom/sprint/dsa/diagnostics/PowerModeDialog;

    .line 243
    .end local v1           #current:Lcom/sprint/dsa/diagnostics/PowerConfig;
    .end local v2           #description:Ljava/lang/String;
    .end local v3           #parameters:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;
    .end local v5           #previous:Lcom/sprint/dsa/diagnostics/PowerConfig;
    .end local v6           #title:Ljava/lang/String;
    :cond_36
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 101
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->refresh()V

    .line 102
    return-void
.end method

.method public onStatusChange(Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 2
    .parameter "diagnostic"

    .prologue
    .line 160
    return-void
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/PowerConfigListAdapter;->refresh(Z)V

    .line 146
    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->getCurrent(Landroid/content/Context;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mPowerConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

    .line 148
    invoke-virtual {p0}, Lcom/sprint/dsa/PowerConfigActivity;->refreshButtonState()V

    .line 149
    return-void
.end method

.method public refreshButtonState()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity;->mPowerConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PowerConfigActivity;->refreshButtonState(Lcom/sprint/dsa/diagnostics/PowerConfig;)V

    .line 268
    return-void
.end method

.method public refreshButtonState(Lcom/sprint/dsa/diagnostics/PowerConfig;)V
    .registers 8
    .parameter "powerConfig"

    .prologue
    const/4 v4, 0x0

    .line 271
    const v5, 0x7f0b000a

    invoke-virtual {p0, v5}, Lcom/sprint/dsa/PowerConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 272
    .local v0, btnLow:Landroid/widget/Button;
    const v5, 0x7f0b000b

    invoke-virtual {p0, v5}, Lcom/sprint/dsa/PowerConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 274
    .local v1, btnRestore:Landroid/widget/Button;
    invoke-virtual {p0, v4}, Lcom/sprint/dsa/PowerConfigActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 275
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sprint/dsa/diagnostics/PowerConfig;->inPreferences(Landroid/content/SharedPreferences;)Z

    move-result v2

    .line 277
    .local v2, hasStoredPrefs:Z
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/PowerConfig;->isLowPower()Z

    move-result v5

    if-eqz v5, :cond_28

    :goto_21
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    return-void

    .line 277
    :cond_28
    const/4 v4, 0x1

    goto :goto_21
.end method

.method public restorePowerMode()V
    .registers 6

    .prologue
    .line 249
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PowerConfigActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->inPreferences(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 251
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->fromPreferences(Landroid/content/SharedPreferences;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v1

    .line 253
    .local v1, previous:Lcom/sprint/dsa/diagnostics/PowerConfig;
    if-eqz v1, :cond_26

    .line 254
    invoke-virtual {v1, p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->apply(Landroid/content/Context;)V

    .line 256
    const v2, 0x7f0800bf

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PowerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/sprint/dsa/PowerConfigActivity;->showProgressThenRefresh(Ljava/lang/String;J)V

    .line 259
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->clearPreferences(Landroid/content/SharedPreferences;)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PowerConfigActivity;->refreshButtonState(Lcom/sprint/dsa/diagnostics/PowerConfig;)V

    .line 264
    .end local v1           #previous:Lcom/sprint/dsa/diagnostics/PowerConfig;
    :cond_26
    return-void
.end method

.method public showProgressThenRefresh(Ljava/lang/String;J)V
    .registers 7
    .parameter "title"
    .parameter "timeout"

    .prologue
    .line 201
    .line 202
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PowerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 201
    invoke-static {p0, p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/PowerConfigActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 204
    new-instance v0, Lcom/sprint/dsa/PowerConfigActivity$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/sprint/dsa/PowerConfigActivity$2;-><init>(Lcom/sprint/dsa/PowerConfigActivity;J)V

    .line 223
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method
