.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$402(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 363
    :cond_73
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$102(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 369
    :cond_c8
    return-void
.end method
