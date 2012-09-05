.class Lcom/google/android/music/MusicSettingsActivity$4;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 242
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 247
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_de

    .line 249
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$1200(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-virtual {v2}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$700(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$800(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 254
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$600(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$1300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$100(Lcom/google/android/music/MusicSettingsActivity;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 257
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 258
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 260
    :cond_62
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$1400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 281
    :goto_6b
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$700(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getHideWhenNotConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$600(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isCachedStreamingMusicEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$1400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyHQ()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineDLOnlyOnWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$900(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isLockScreenActivityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    return-void

    .line 263
    :cond_de
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$1200(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-virtual {v2}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0029

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_159

    .line 266
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$700(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$800(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 272
    :goto_118
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$600(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 273
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$1300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$100(Lcom/google/android/music/MusicSettingsActivity;)Z

    move-result v1

    if-nez v1, :cond_14e

    .line 275
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 278
    :cond_14e
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$1400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6b

    .line 269
    :cond_159
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$700(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 270
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$4;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$800(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_118
.end method
