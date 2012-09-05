.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$15;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 1106
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1107
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1109
    .local v0, mWifiStatus:I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_36

    .line 1115
    :goto_12
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setWifiSettingsLaunched(Z)V

    .line 1116
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v1, wifiIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const/high16 v3, 0x2080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1122
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$15;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    const/high16 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x3ef

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1123
    return-void

    .line 1112
    .end local v1           #wifiIntent:Landroid/content/Intent;
    :cond_36
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_12
.end method
