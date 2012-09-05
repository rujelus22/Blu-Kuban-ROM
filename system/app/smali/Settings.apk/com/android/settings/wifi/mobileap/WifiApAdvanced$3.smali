.class Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;
.super Ljava/lang/Object;
.source "WifiApAdvanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->tempMaxClient:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mMaxClient:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->access$300(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 127
    .local v0, wifiApState:I
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAdvanced$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAdvanced;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApAdvanced;->access$400(Lcom/android/settings/wifi/mobileap/WifiApAdvanced;Landroid/net/wifi/WifiConfiguration;)V

    .line 128
    return-void
.end method
