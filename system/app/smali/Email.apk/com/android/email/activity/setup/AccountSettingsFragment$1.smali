.class Lcom/android/email/activity/setup/AccountSettingsFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 369
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 371
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    iget-object v0, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 373
    :cond_16
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const-string v2, "account_description"

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    const/4 v1, 0x0

    return v1
.end method
