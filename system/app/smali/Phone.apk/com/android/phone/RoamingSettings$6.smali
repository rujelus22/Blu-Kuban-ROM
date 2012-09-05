.class Lcom/android/phone/RoamingSettings$6;
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
    .line 269
    iput-object p1, p0, Lcom/android/phone/RoamingSettings$6;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 271
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$6;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonInternationalCallRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$500(Lcom/android/phone/RoamingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$6;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v1, "roam_setting_call_international"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 273
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$6;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v1, "roam_guard_call_international"

    #calls: Lcom/android/phone/RoamingSettings;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;Ljava/lang/String;I)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$6;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$200(Lcom/android/phone/RoamingSettings;)V

    .line 276
    return-void
.end method
