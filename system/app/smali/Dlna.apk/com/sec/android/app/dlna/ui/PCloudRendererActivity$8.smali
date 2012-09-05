.class Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$8;
.super Ljava/lang/Object;
.source "PCloudRendererActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$8;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

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

    .line 322
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$8;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 323
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 324
    .local v2, wifiStatus:I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_15

    .line 325
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 328
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, wifiIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const/high16 v3, 0x3080

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    const-string v3, "wifiSettingsAppear"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$8;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    const/high16 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x3ef

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 335
    return-void
.end method
