.class Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;
.super Ljava/lang/Object;
.source "BaseSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->hookMasterSwitch(Landroid/preference/PreferenceCategory;Landroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/BaseSettingsActivity;

.field final synthetic val$preference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/BaseSettingsActivity;Landroid/preference/CheckBoxPreference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/BaseSettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    .line 217
    .local v0, changeListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 219
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    :cond_19
    return-void
.end method
