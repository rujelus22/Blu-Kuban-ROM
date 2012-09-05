.class Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
.super Landroid/preference/Preference;
.source "WifiApAllowedDevice.java"


# instance fields
.field private mMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "mac"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 5
    .parameter "preference"

    .prologue
    .line 41
    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    if-nez v1, :cond_6

    .line 42
    const/4 v1, 0x1

    .line 45
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    .line 45
    .local v0, other:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 37
    return-void
.end method
