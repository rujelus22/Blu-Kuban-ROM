.class abstract Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceListenerFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private registerListener()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 55
    :cond_9
    return-void
.end method

.method private unregisterListener()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 61
    :cond_9
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->setSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 73
    return-void
.end method

.method protected final getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 48
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->unregisterListener()V

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 89
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->registerListener()V

    .line 83
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 97
    :cond_9
    return-void
.end method

.method public final setOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 110
    return-void
.end method

.method protected final setSharedPreferences(Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "preferences"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->unregisterListener()V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 67
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/PreferenceListenerFragment;->registerListener()V

    .line 69
    :cond_e
    return-void
.end method
