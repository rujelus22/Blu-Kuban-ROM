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
    .line 84
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$002([Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 88
    return-void
.end method

.method public taskCompleted()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 92
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$100(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 94
    .local v2, selectedAccount:Landroid/accounts/Account;
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$200(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-virtual {v3}, Lcom/google/android/music/AccountSettings;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v8, "numAvailableAccounts"

    aput-object v8, v7, v3

    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v3

    if-nez v3, :cond_85

    const-string v3, "0"

    :goto_29
    aput-object v3, v7, v9

    const/4 v3, 0x2

    const-string v8, "isAccountSelected"

    aput-object v8, v7, v3

    const/4 v8, 0x3

    if-nez v2, :cond_9e

    const-string v3, "false"

    :goto_35
    aput-object v3, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_41
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_a1

    .line 99
    new-instance v1, Lcom/google/android/music/AccountPreference;

    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/google/android/music/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 101
    .local v1, preference:Lcom/google/android/music/AccountPreference;
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$300(Lcom/google/android/music/AccountSettings;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 103
    invoke-virtual {v1, v9}, Lcom/google/android/music/AccountPreference;->setChecked(Z)V

    .line 104
    invoke-static {v1}, Lcom/google/android/music/AccountSettings;->access$402(Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;

    .line 106
    :cond_70
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$500(Lcom/google/android/music/AccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$1;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$600(Lcom/google/android/music/AccountSettings;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 94
    .end local v0           #i:I
    .end local v1           #preference:Lcom/google/android/music/AccountPreference;
    :cond_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$000()[Landroid/accounts/Account;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    :cond_9e
    const-string v3, "true"

    goto :goto_35

    .line 110
    :cond_a1
    return-void
.end method
