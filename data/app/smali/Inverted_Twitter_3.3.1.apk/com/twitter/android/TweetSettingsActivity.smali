.class public Lcom/twitter/android/TweetSettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/twitter/android/util/w;


# instance fields
.field a:Landroid/preference/CheckBoxPreference;

.field b:Landroid/preference/PreferenceCategory;

.field c:Ljava/lang/String;

.field private d:Lcom/twitter/android/client/b;

.field private e:Lcom/twitter/android/ga;

.field private f:Lcom/twitter/android/client/Session;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/content/Intent;

.field private j:Ljava/util/HashSet;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->j:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/TweetSettingsActivity;->k:I

    return-void
.end method

.method private a(ZI)Landroid/content/Intent;
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->i:Landroid/content/Intent;

    if-nez v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->i:Landroid/content/Intent;

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->i:Landroid/content/Intent;

    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->i:Landroid/content/Intent;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->g:Landroid/preference/Preference;

    if-nez v0, :cond_1b

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOrder(I)V

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->g:Landroid/preference/Preference;

    :cond_1b
    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->b:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/TweetSettingsActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 10

    const/4 v0, 0x1

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_42

    iget v0, p0, Lcom/twitter/android/TweetSettingsActivity;->k:I

    if-lez v0, :cond_42

    iget-object v3, p0, Lcom/twitter/android/TweetSettingsActivity;->b:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v4, :cond_42

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    check-cast v0, Lcom/twitter/android/widget/UserCheckBoxPreference;

    invoke-virtual {v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a()Lcom/twitter/android/api/ac;

    move-result-object v1

    iget-wide v5, v1, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/util/u;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a(Landroid/graphics/Bitmap;)V

    :cond_3e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_42
    return-void
.end method

.method final a(Ljava/util/ArrayList;)V
    .registers 13

    const/4 v2, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/twitter/android/TweetSettingsActivity;->b:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz v3, :cond_85

    invoke-direct {p0}, Lcom/twitter/android/TweetSettingsActivity;->a()V

    move v1, v2

    :goto_16
    invoke-virtual {p0}, Lcom/twitter/android/TweetSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e0006

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/twitter/android/TweetSettingsActivity;->b:Landroid/preference/PreferenceCategory;

    iput v1, p0, Lcom/twitter/android/TweetSettingsActivity;->k:I

    iput v1, p0, Lcom/twitter/android/TweetSettingsActivity;->l:I

    const/4 v0, -0x1

    iget v1, p0, Lcom/twitter/android/TweetSettingsActivity;->l:I

    invoke-direct {p0, v3, v1}, Lcom/twitter/android/TweetSettingsActivity;->a(ZI)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetSettingsActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_3d
    iget-object v5, p0, Lcom/twitter/android/TweetSettingsActivity;->d:Lcom/twitter/android/client/b;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    new-instance v7, Lcom/twitter/android/widget/UserCheckBoxPreference;

    invoke-direct {v7, p0}, Lcom/twitter/android/widget/UserCheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a(Lcom/twitter/android/api/ac;)V

    iget-object v8, v0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-eqz v8, :cond_67

    iget-wide v8, v0, Lcom/twitter/android/api/ac;->a:J

    iget-object v0, v0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v5, v10, v8, v9, v0}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a(Landroid/graphics/Bitmap;)V

    :cond_67
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v7, p0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string v0, "notif_tweets"

    invoke-virtual {v7, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->setDependency(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    :cond_7d
    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->h:Landroid/preference/Preference;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_16

    :cond_85
    move v1, v2

    goto :goto_16
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetSettingsActivity;->setTitle(I)V

    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetSettingsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "notif_tweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "enabled"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->a:Landroid/preference/CheckBoxPreference;

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01ac

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->b:Landroid/preference/PreferenceCategory;

    new-instance v2, Lcom/twitter/android/widget/MessagePreference;

    invoke-direct {v2, p0}, Lcom/twitter/android/widget/MessagePreference;-><init>(Landroid/content/Context;)V

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/MessagePreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f0b00a4

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0b0064

    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/twitter/android/TweetSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/MessagePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Lcom/twitter/android/widget/MessagePreference;->setShouldDisableView(Z)V

    invoke-virtual {v2, v6}, Lcom/twitter/android/widget/MessagePreference;->setSelectable(Z)V

    invoke-virtual {v2, v6}, Lcom/twitter/android/widget/MessagePreference;->setPersistent(Z)V

    iput-object v2, p0, Lcom/twitter/android/TweetSettingsActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/ga;

    invoke-direct {v0, p0}, Lcom/twitter/android/ga;-><init>(Lcom/twitter/android/TweetSettingsActivity;)V

    invoke-virtual {v2, v7, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    iput-object v2, p0, Lcom/twitter/android/TweetSettingsActivity;->d:Lcom/twitter/android/client/b;

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->e:Lcom/twitter/android/ga;

    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->f:Lcom/twitter/android/client/Session;

    const/16 v1, 0x10

    const/16 v3, 0x190

    invoke-virtual {v2, v0, v6, v1, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->c:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->d:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->d:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetSettingsActivity;->e:Lcom/twitter/android/ga;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    const-string v0, "notif_tweets"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/twitter/android/TweetSettingsActivity;->k:I

    if-nez v1, :cond_1b

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/twitter/android/TweetSettingsActivity;->a()V

    :cond_1b
    :goto_1b
    const/4 v1, -0x1

    iget v2, p0, Lcom/twitter/android/TweetSettingsActivity;->l:I

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/TweetSettingsActivity;->a(ZI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/TweetSettingsActivity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_27
    iget-object v1, p0, Lcom/twitter/android/TweetSettingsActivity;->g:Landroid/preference/Preference;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/twitter/android/TweetSettingsActivity;->b:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/twitter/android/TweetSettingsActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1b

    :cond_33
    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    check-cast p1, Lcom/twitter/android/widget/UserCheckBoxPreference;

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a()Lcom/twitter/android/api/ac;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/twitter/android/TweetSettingsActivity;->j:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/twitter/android/TweetSettingsActivity;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/twitter/android/TweetSettingsActivity;->l:I

    goto :goto_1b

    :cond_59
    iget-object v2, p0, Lcom/twitter/android/TweetSettingsActivity;->j:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/twitter/android/TweetSettingsActivity;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/twitter/android/TweetSettingsActivity;->l:I

    goto :goto_1b
.end method

.method protected onStop()V
    .registers 7

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    iget-object v1, p0, Lcom/twitter/android/TweetSettingsActivity;->d:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/TweetSettingsActivity;->f:Lcom/twitter/android/client/Session;

    iget-object v0, p0, Lcom/twitter/android/TweetSettingsActivity;->j:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;JZ)Ljava/lang/String;

    goto :goto_d

    :cond_22
    return-void
.end method
