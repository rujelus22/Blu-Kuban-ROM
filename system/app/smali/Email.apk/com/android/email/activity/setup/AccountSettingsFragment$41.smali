.class Lcom/android/email/activity/setup/AccountSettingsFragment$41;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 2518
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2519
    .local v0, summary:Ljava/lang/String;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 2520
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountPassword:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 2521
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4702(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2522
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onModifyUserAccount(Ljava/lang/String;)V

    .line 2523
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$41;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 2525
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method
