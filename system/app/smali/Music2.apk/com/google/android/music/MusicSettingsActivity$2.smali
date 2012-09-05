.class Lcom/google/android/music/MusicSettingsActivity$2;
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
    .line 135
    iput-object p1, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 137
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    iget-object v4, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #calls: Lcom/google/android/music/MusicSettingsActivity;->getIsWifiOnly()Z
    invoke-static {v4}, Lcom/google/android/music/MusicSettingsActivity;->access$200(Lcom/google/android/music/MusicSettingsActivity;)Z

    move-result v4

    #setter for: Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z
    invoke-static {v3, v4}, Lcom/google/android/music/MusicSettingsActivity;->access$102(Lcom/google/android/music/MusicSettingsActivity;Z)Z

    .line 139
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-virtual {v3}, Lcom/google/android/music/MusicSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 140
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$100(Lcom/google/android/music/MusicSettingsActivity;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 141
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 143
    :cond_31
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not remove the streaming over wifi preferences"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_39
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isCachingFeatureAvailable()Z

    move-result v3

    if-nez v3, :cond_59

    .line 149
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$600(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 150
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not remove the caching preferences"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_59
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v3

    if-nez v3, :cond_85

    .line 156
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$700(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$800(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 158
    :cond_7d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not remove the offline preferences"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_85
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isLockScreenActivityAvailable()Z

    move-result v3

    if-nez v3, :cond_a5

    .line 164
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$900(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 165
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not remove the lockscreen controls preferences"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_a5
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v3

    if-nez v3, :cond_cb

    .line 171
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity$2;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;
    invoke-static {v3}, Lcom/google/android/music/MusicSettingsActivity;->access$1000(Lcom/google/android/music/MusicSettingsActivity;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 172
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_bb

    .line 175
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_cb
    return-void
.end method
