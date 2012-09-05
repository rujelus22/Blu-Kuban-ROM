.class Lcom/android/settings/wifi/mobileap/WifiApAdvanced$1;
.super Ljava/lang/Object;
.source "WifiApAdvanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 106
    const-string v0, "WifiApAdvanced"

    const-string v1, "mLanSettings.setOnPreferenceClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0956

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 110
    return v6
.end method
