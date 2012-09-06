.class public final Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;
.super Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;
.source "ReaderPreferencesFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaderPreferencesFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;-><init>()V

    return-void
.end method

.method private getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z
    .registers 4
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 48
    :goto_a
    return v0

    .line 47
    :cond_b
    const-string v0, "ReaderPreferencesFragment"

    const-string v1, "No account selected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getDefaultValueAsBoolean()Z

    move-result v0

    goto :goto_a
.end method

.method private putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_b

    .line 55
    invoke-virtual {p1, v0, p2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->putBoolean(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    .line 58
    :goto_a
    return v0

    .line 57
    :cond_b
    const-string v0, "ReaderPreferencesFragment"

    const-string v1, "No account selected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->clear()V

    return-void
.end method

.method public getConfirmMarkAsRead()Z
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->CONFIRM_MARK_AS_READ:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public getShowAllFriends()Z
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_ALL_FRIENDS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public getShowAllSubscriptions()Z
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_ALL_SUBSCRIPTIONS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public getShowFriendsUnreadCounts()Z
    .registers 2

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_FRIENDS_UNREAD_COUNTS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public getShowSubscriptionsUnreadCounts()Z
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_SUBSCRIPTIONS_UNREAD_COUNTS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public getSortFriendsAlpha()Z
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SORT_FRIENDS_ALPHA:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public getSortSubscriptionsAlpha()Z
    .registers 2

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SORT_SUBSCRIPTIONS_ALPHA:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public getSubscriptionFaviconsEnabled()Z
    .registers 2

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SUBSCRIPTION_FAVICONS_ENABLED:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPause()V
    .registers 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .registers 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->onResume()V

    return-void
.end method

.method public setAccount(Lcom/google/android/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 34
    if-eqz p1, :cond_e

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 36
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->setSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 40
    .end local v0           #context:Landroid/content/Context;
    :goto_d
    return-void

    .line 38
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->clear()V

    goto :goto_d
.end method

.method public setReadItemsVisiblePreference(Z)Z
    .registers 3
    .parameter "readItemsVisible"

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method

.method public setShowAllFriends(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 119
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_ALL_FRIENDS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method

.method public setShowAllSubscriptions(Z)Z
    .registers 3
    .parameter "showAll"

    .prologue
    .line 99
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_ALL_SUBSCRIPTIONS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method

.method public setShowFriendsUnreadCounts(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_FRIENDS_UNREAD_COUNTS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method

.method public setShowSubscriptionsUnreadCounts(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 103
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_SUBSCRIPTIONS_UNREAD_COUNTS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method

.method public setSortFriendsAlpha(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SORT_FRIENDS_ALPHA:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method

.method public setSortSubscriptionsAlpha(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SORT_SUBSCRIPTIONS_ALPHA:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method

.method public setSubscriptionFaviconsEnabled(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 111
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SUBSCRIPTION_FAVICONS_ENABLED:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/reader/fragment/ReaderPreferencesFragment;->putBoolean(Lcom/google/android/apps/reader/preference/ReaderPreference;Z)Z

    move-result v0

    return v0
.end method
