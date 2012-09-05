.class Lcom/google/android/music/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AccountSettings;
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
    .line 107
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9
    .parameter "pref"

    .prologue
    .line 109
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/AccountPreference;

    .line 110
    .local v0, accountPref:Lcom/google/android/music/AccountPreference;
    invoke-virtual {v0}, Lcom/google/android/music/AccountPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$300()Lcom/google/android/music/AccountPreference;

    move-result-object v3

    if-eq v0, v3, :cond_2b

    .line 114
    new-instance v1, Lcom/google/android/music/sync/google/MusicAuthInfo;

    iget-object v3, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {v1, v3}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :try_start_16
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-virtual {v0}, Lcom/google/android/music/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    new-instance v5, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;

    iget-object v6, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {v5, v6, v0}, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;-><init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthTokenForeground(Landroid/app/Activity;Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_2b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_16 .. :try_end_2b} :catch_2d

    .line 125
    .end local v1           #authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :cond_2b
    :goto_2b
    const/4 v3, 0x1

    return v3

    .line 120
    .restart local v1       #authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :catch_2d
    move-exception v2

    .line 121
    .local v2, e:Landroid/accounts/AuthenticatorException;
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    const v4, 0x7f0d0003

    const v5, 0x7f0d0004

    #calls: Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V
    invoke-static {v3, v4, v5}, Lcom/google/android/music/AccountSettings;->access$600(Lcom/google/android/music/AccountSettings;II)V

    goto :goto_2b
.end method
