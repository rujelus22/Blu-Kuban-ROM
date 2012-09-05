.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;
.super Landroid/preference/PreferenceActivity;
.source "MenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static chkboxFlag:Z


# instance fields
.field private autoRefreshPreference:Landroid/preference/ListPreference;

.field private autoScrollingPreference:Landroid/preference/ListPreference;

.field private initFlag:Z

.field private mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field mIsVisible:Z

.field private refreshItemsValue:[Ljava/lang/String;

.field private scrollItemsValue:[Ljava/lang/String;

.field private scrollTimes:[I

.field private strRefreshItems:[Ljava/lang/String;

.field private strScrollItems:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 35
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    .line 36
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->scrollItemsValue:[Ljava/lang/String;

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_5a

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->scrollTimes:[I

    .line 47
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->initFlag:Z

    return-void

    .line 42
    :array_5a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setAutoRefreshItemValue()V

    .line 134
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setAutoScrollItemValue()V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setView()V

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setRefreshSummary(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutoscrollSetting(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setScrollingSummary(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private setAutoRefreshItemValue()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 143
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 144
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    const/4 v1, 0x2

    const v2, 0x7f090032

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 147
    return-void
.end method

.method private setAutoScrollItemValue()V
    .registers 7

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 154
    if-nez v0, :cond_16

    .line 155
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    const v2, 0x7f090030

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 152
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    const v2, 0x7f09005a

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->scrollTimes:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_13

    .line 160
    :cond_34
    return-void
.end method

.method private setRefreshSummary(Ljava/lang/String;)V
    .registers 9
    .parameter "value"

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, i:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v4, :cond_f

    aget-object v3, v0, v2

    .line 188
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 194
    .end local v3           #item:Ljava/lang/String;
    :cond_f
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_19

    .line 196
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .line 198
    :cond_19
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    return-void

    .line 192
    .restart local v3       #item:Ljava/lang/String;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private setScrollingSummary(Ljava/lang/String;)V
    .registers 9
    .parameter "value"

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, i:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->scrollItemsValue:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v4, :cond_f

    aget-object v3, v0, v2

    .line 208
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 214
    .end local v3           #item:Ljava/lang/String;
    :cond_f
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_19

    .line 216
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .line 218
    :cond_19
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 212
    .restart local v3       #item:Ljava/lang/String;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private setView()V
    .registers 3

    .prologue
    .line 165
    const-string v0, "autorefresh"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    .line 166
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strRefreshItems:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    const-string v0, "autoscroll"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    .line 174
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->strScrollItems:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->scrollItemsValue:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutoscrollSetting(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 181
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_c

    .line 78
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 79
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 82
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_17

    .line 83
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoRefreshPreference:Landroid/preference/ListPreference;

    .line 87
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_22

    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->autoScrollingPreference:Landroid/preference/ListPreference;

    .line 91
    :cond_22
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    const/16 v0, -0x5a

    if-ne p2, v0, :cond_d

    .line 120
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->finish()V

    .line 124
    :cond_d
    if-nez p1, :cond_12

    .line 126
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V

    .line 128
    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setActivityVisibleState(Z)V

    .line 54
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 55
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V

    .line 56
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->initFlag:Z

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->cleanResource()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setActivityVisibleState(Z)V

    .line 113
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 16
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, key:Ljava/lang/String;
    const-string v10, "autorefresh"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    move-object v7, p2

    .line 227
    check-cast v7, Ljava/lang/String;

    .line 230
    .local v7, val:Ljava/lang/String;
    :try_start_11
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 231
    .local v6, refreshVal:I
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/widgetapp/stockclock/common/Util;->simEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 233
    if-nez v6, :cond_5a

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    .line 282
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_34} :catch_b2

    .line 295
    .end local v6           #refreshVal:I
    :goto_34
    invoke-direct {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setRefreshSummary(Ljava/lang/String;)V

    .line 299
    .end local v7           #val:Ljava/lang/String;
    :cond_37
    const-string v8, "autoscroll"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    move-object v7, p2

    .line 301
    check-cast v7, Ljava/lang/String;

    .line 304
    .restart local v7       #val:Ljava/lang/String;
    :try_start_42
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 306
    .restart local v6       #refreshVal:I
    invoke-static {p0, v6}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setAutoscrollSetting(Landroid/content/Context;I)Z

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNextTimeScroll(Landroid/content/Context;ZZ)J

    .line 308
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_55} :catch_d9

    .line 314
    .end local v6           #refreshVal:I
    :goto_55
    invoke-direct {p0, v7}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setScrollingSummary(Ljava/lang/String;)V

    .end local v7           #val:Ljava/lang/String;
    :cond_58
    move v8, v9

    .line 317
    :goto_59
    return v8

    .line 239
    .restart local v6       #refreshVal:I
    .restart local v7       #val:Ljava/lang/String;
    :cond_5a
    :try_start_5a
    sget-boolean v10, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->chkboxFlag:Z

    if-nez v10, :cond_b8

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v10

    if-nez v10, :cond_b8

    .line 241
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, dialogs:Landroid/app/AlertDialog$Builder;
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 243
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/high16 v10, 0x7f03

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 244
    .local v5, layout:Landroid/view/View;
    const v10, 0x7f0b0002

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 247
    .local v0, chkbox:Landroid/widget/CheckBox;
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$1;

    invoke-direct {v10, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;)V

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 253
    const v10, 0x7f09004d

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 254
    const v10, 0x1080027

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 256
    const v10, 0x7f090029

    new-instance v11, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;

    invoke-direct {v11, p0, v0, v6}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    const v10, 0x7f09002a

    new-instance v11, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$3;

    invoke-direct {v11, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_b1} :catch_b2

    goto :goto_59

    .line 291
    .end local v0           #chkbox:Landroid/widget/CheckBox;
    .end local v1           #dialogs:Landroid/app/AlertDialog$Builder;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #layout:Landroid/view/View;
    .end local v6           #refreshVal:I
    :catch_b2
    move-exception v2

    .line 293
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_34

    .line 275
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #refreshVal:I
    :cond_b8
    :try_start_b8
    invoke-static {p0, v6}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    .line 277
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V

    goto :goto_59

    .line 286
    :cond_c8
    invoke-static {p0, v6}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    .line 288
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V
    :try_end_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_d7} :catch_b2

    goto/16 :goto_34

    .line 310
    .end local v6           #refreshVal:I
    :catch_d9
    move-exception v2

    .line 312
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_55
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 69
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->initFlag:Z

    if-nez v0, :cond_a

    .line 70
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V

    .line 72
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->setActivityVisibleState(Z)V

    .line 73
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->mIsVisible:Z

    .line 107
    return-void
.end method
