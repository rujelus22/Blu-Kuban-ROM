.class public Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;
.super Landroid/preference/PreferenceActivity;
.source "SettingsNews.java"


# instance fields
.field private mAutoRefresh:Landroid/preference/ListPreference;

.field private mAutoRefreshListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mAutoScroll:Landroid/preference/ListPreference;

.field private mAutoScrollClickListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mCheckedTextView:Landroid/widget/CheckedTextView;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

.field private mMainRoot:Landroid/preference/PreferenceScreen;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPreSelectValue:I

.field private mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

.field private mSet:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 132
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScrollClickListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 164
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefreshListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 368
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mSet:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPreSelectValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPreSelectValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/widget/CheckedTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mCheckedTextView:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method private createPreference()Landroid/preference/PreferenceScreen;
    .registers 11

    .prologue
    const/4 v5, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mMainRoot:Landroid/preference/PreferenceScreen;

    .line 62
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    .line 63
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, autoScrollArray:[Ljava/lang/String;
    aget-object v2, v1, v8

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 67
    aget-object v2, v1, v8

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 68
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 71
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 72
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    const-string v3, "AP_NEWS_AUTO_SCROLL"

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_17a

    .line 89
    :goto_6b
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScrollClickListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mMainRoot:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 94
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    .line 95
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, autoRefreshArray:[Ljava/lang/String;
    aget-object v2, v0, v9

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    .line 99
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 102
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    const-string v3, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_184

    .line 124
    :goto_c3
    :pswitch_c3
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefreshListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mMainRoot:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 128
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mMainRoot:Landroid/preference/PreferenceScreen;

    return-object v2

    .line 74
    .end local v0           #autoRefreshArray:[Ljava/lang/String;
    :pswitch_d4
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 75
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_6b

    .line 79
    :pswitch_e2
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_6b

    .line 84
    :pswitch_105
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_6b

    .line 105
    .restart local v0       #autoRefreshArray:[Ljava/lang/String;
    :pswitch_12a
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 106
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_c3

    .line 110
    :pswitch_138
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 111
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_c3

    .line 115
    :pswitch_147
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 116
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_c3

    .line 120
    :pswitch_156
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_c3

    .line 72
    nop

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_e2
        :pswitch_105
    .end packed-switch

    .line 103
    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_c3
        :pswitch_c3
        :pswitch_138
        :pswitch_147
        :pswitch_c3
        :pswitch_156
    .end packed-switch
.end method

.method private setNotificationView(Landroid/content/Context;)Landroid/view/View;
    .registers 7
    .parameter "context"

    .prologue
    .line 358
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 359
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 360
    .local v2, view:Landroid/widget/LinearLayout;
    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mCheckedTextView:Landroid/widget/CheckedTextView;

    .line 362
    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 363
    .local v0, doNotAskArea:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iput-object p0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    .line 49
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 51
    const-string v0, "checkbox_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mSet:Landroid/content/SharedPreferences;

    .line 53
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->createPreference()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 54
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "id"
    .parameter "args"

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, aBuilder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_40

    .line 350
    :goto_4
    if-eqz v0, :cond_3e

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 353
    :goto_a
    return-object v1

    .line 290
    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #aBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .restart local v0       #aBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 293
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 294
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->setNotificationView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v1, 0x7f0a0007

    new-instance v2, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    const v1, 0x7f0a0008

    new-instance v2, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$4;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 353
    :cond_3e
    const/4 v1, 0x0

    goto :goto_a

    .line 288
    :pswitch_data_40
    .packed-switch 0x3e8
        :pswitch_b
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    if-eqz v0, :cond_7

    .line 400
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    if-eqz v0, :cond_d

    .line 404
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 407
    :cond_d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 408
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APNewsWidget.action.widget.news.reload.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 392
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 395
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 396
    return-void
.end method
