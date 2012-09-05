.class Lcom/android/phone/RoamingSettings$4;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 191
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$400(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 192
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_setting_call_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_guard_call_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 196
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$200(Lcom/android/phone/RoamingSettings;)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, dialogIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 211
    .end local v0           #dialogIntent:Landroid/content/Intent;
    :goto_34
    return-void

    .line 201
    :cond_35
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$300(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_setting_data_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 203
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_guard_data_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonDomesticCallRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_setting_call_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_guard_call_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$200(Lcom/android/phone/RoamingSettings;)V

    goto :goto_34
.end method
