.class Lcom/android/email/activity/setup/AccountSettingsFragment$43;
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


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 2600
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2604
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2607
    .local v0, isChecked:Z
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2608
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->IsEAS()Z
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z

    move-result v3

    if-nez v3, :cond_33

    if-eqz v0, :cond_33

    .line 2609
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0803ec

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2625
    .end local p1
    :goto_32
    return v1

    .line 2615
    .restart local p1
    :cond_33
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$4900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2617
    if-nez v0, :cond_5f

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const-string v4, "account_default"

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    if-ne v3, p1, :cond_5f

    .line 2619
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccount_message:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 2620
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccount_message:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_32

    .line 2624
    :cond_5f
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$43;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    move v1, v2

    .line 2625
    goto :goto_32
.end method
