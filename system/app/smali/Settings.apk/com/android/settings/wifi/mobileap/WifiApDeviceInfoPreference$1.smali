.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$002(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Z)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const v1, 0x7f0b022b

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    .line 77
    :goto_16
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    .line 78
    return-void

    .line 74
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$002(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Z)Z

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const v1, 0x7f0b022a

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_16
.end method
