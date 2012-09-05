.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

.field final synthetic val$macAddress:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->val$macAddress:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->val$macAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, mac:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 117
    .local v2, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_32

    .line 129
    :goto_15
    :pswitch_15
    return-void

    .line 119
    :pswitch_16
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    .local v0, device:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_15

    .line 123
    .end local v0           #device:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    :pswitch_2b
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v4, 0x3

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    goto :goto_15

    .line 117
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_2b
    .end packed-switch
.end method
