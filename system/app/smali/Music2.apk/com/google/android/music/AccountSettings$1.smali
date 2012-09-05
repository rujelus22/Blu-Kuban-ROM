.class Lcom/google/android/music/AccountSettings$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AccountSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$002([Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 77
    return-void
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    .line 81
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$100(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 83
    .local v2, selectedAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_56

    .line 85
    new-instance v1, Lcom/google/android/music/AccountPreference;

    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/google/android/music/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 87
    .local v1, preference:Lcom/google/android/music/AccountPreference;
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$200(Lcom/google/android/music/AccountSettings;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 89
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/music/AccountPreference;->setChecked(Z)V

    .line 90
    invoke-static {v1}, Lcom/google/android/music/AccountSettings;->access$302(Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;

    .line 92
    :cond_41
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$400(Lcom/google/android/music/AccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 93
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$500(Lcom/google/android/music/AccountSettings;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 96
    .end local v0           #i:I
    .end local v1           #preference:Lcom/google/android/music/AccountPreference;
    :cond_56
    return-void
.end method
