.class public Lcom/twitter/android/WidgetSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/twitter/android/widget/RadioButtonPreference;

.field private e:Lcom/twitter/android/widget/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput v1, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    iput v1, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    return-void
.end method

.method private a()V
    .registers 10

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    packed-switch v4, :pswitch_data_78

    const/4 v1, 0x1

    const v0, 0x7f050002

    :goto_14
    iget-object v5, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    :cond_26
    iget-object v5, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v6

    iget v7, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    iget v8, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    invoke-virtual {v6, v7, v1, v5, v8}, Lcom/twitter/android/provider/a;->a(IILjava/lang/String;I)I

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v4, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    invoke-virtual {v3, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/twitter/android/WidgetSettingsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;JZ)V

    :goto_6a
    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->finish()V

    return-void

    :pswitch_6e
    const v0, 0x7f050003

    move v1, v2

    goto :goto_14

    :cond_73
    invoke-static {p0, v0}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;I)V

    goto :goto_6a

    nop

    :pswitch_data_78
    .packed-switch 0x7f030068
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 12

    const v9, 0x7f0b00ac

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    array-length v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    move v1, v2

    move v0, v3

    :goto_23
    if-ge v1, v5, :cond_4b

    aget-object v6, p1, v1

    const-string v7, "com.twitter.android.auth.login"

    iget-object v8, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v0, v3, :cond_48

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_4b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_10

    if-ltz v0, :cond_10

    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "widget_account"

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setPersistent(Z)V

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    :goto_7
    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/twitter/android/WidgetSettingsActivity;->a()V

    goto :goto_7

    :pswitch_data_c
    .packed-switch 0x7f0700d2
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->setContentView(I)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/WidgetSettingsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    :cond_1f
    iget v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->a:I

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/twitter/android/WidgetSettingsActivity;->finish()V

    :cond_26
    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-direct {p0}, Lcom/twitter/android/WidgetSettingsActivity;->a()V

    :goto_33
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void

    :cond_3d
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->addPreferencesFromResource(I)V

    const-string v0, "widget_content_tweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->d:Lcom/twitter/android/widget/RadioButtonPreference;

    const-string v0, "widget_content_mentions"

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->e:Lcom/twitter/android/widget/RadioButtonPreference;

    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/twitter/android/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_33
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "widget_account"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    check-cast p1, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/twitter/android/WidgetSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_26

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_26
    :goto_26
    return v0

    :cond_27
    const-string v3, "widget_content_tweets"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iput v1, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    iget-object v2, p0, Lcom/twitter/android/WidgetSettingsActivity;->e:Lcom/twitter/android/widget/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_26

    :cond_37
    const-string v3, "widget_content_mentions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    iput v0, p0, Lcom/twitter/android/WidgetSettingsActivity;->c:I

    iget-object v2, p0, Lcom/twitter/android/WidgetSettingsActivity;->d:Lcom/twitter/android/widget/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_26

    :cond_47
    move v0, v1

    goto :goto_26
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
