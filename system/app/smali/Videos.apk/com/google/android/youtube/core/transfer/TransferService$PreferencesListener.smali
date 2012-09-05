.class Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;
.super Ljava/lang/Object;
.source "TransferService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferencesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 2
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "preferences"
    .parameter "key"

    .prologue
    .line 723
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferNetworkPolicyPreference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 724
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #calls: Lcom/google/android/youtube/core/transfer/TransferService;->getTransferOnWifiOnlyPreferenceValue()Z
    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1600(Lcom/google/android/youtube/core/transfer/TransferService;)Z

    move-result v1

    .line 725
    .local v1, wifiRestrict:Z
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->transferOnWifiOnly:Z
    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1700(Lcom/google/android/youtube/core/transfer/TransferService;)Z

    move-result v2

    if-eq v1, v2, :cond_24

    .line 726
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #setter for: Lcom/google/android/youtube/core/transfer/TransferService;->transferOnWifiOnly:Z
    invoke-static {v2, v1}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1702(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z

    .line 727
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 736
    .end local v1           #wifiRestrict:Z
    :cond_24
    :goto_24
    return-void

    .line 729
    :cond_25
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->getTransferWhenChargingOnlyPreference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 730
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #calls: Lcom/google/android/youtube/core/transfer/TransferService;->getTransferWhenChargingOnlyPreferenceValue()Z
    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1800(Lcom/google/android/youtube/core/transfer/TransferService;)Z

    move-result v0

    .line 731
    .local v0, newTransferWhenChargingOnly:Z
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->transferWhenChargingOnly:Z
    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1900(Lcom/google/android/youtube/core/transfer/TransferService;)Z

    move-result v2

    if-eq v0, v2, :cond_24

    .line 732
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #setter for: Lcom/google/android/youtube/core/transfer/TransferService;->transferWhenChargingOnly:Z
    invoke-static {v2, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1902(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z

    .line 733
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    goto :goto_24
.end method
