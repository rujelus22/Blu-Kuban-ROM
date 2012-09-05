.class Lcom/android/phone/RoamingSettings$3;
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
    .line 213
    iput-object p1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$300(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_setting_data_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 217
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "roam_guard_data_domestic"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$400(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 220
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$400(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 222
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/RoamingSettings$3;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonDomesticDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/RoamingSettings;->access$300(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    .line 224
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_44
    return-void
.end method
