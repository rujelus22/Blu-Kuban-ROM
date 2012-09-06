.class public final Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;
.super Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;
.source "StreamPreferencesFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;-><init>()V

    return-void
.end method

.method private getStreamPreferences(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 5
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 33
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->clear()V

    return-void
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

.method public setStream(Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 4
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 37
    if-eqz p2, :cond_a

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->getStreamPreferences(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->setSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 42
    :goto_9
    return-void

    .line 40
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamPreferencesFragment;->clear()V

    goto :goto_9
.end method
