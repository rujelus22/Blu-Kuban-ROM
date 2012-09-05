.class Lcom/sec/android/app/popupuireceiver/popupNITZ$1;
.super Ljava/lang/Object;
.source "popupNITZ.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/popupuireceiver/popupNITZ;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;


# direct methods
.method constructor <init>(Lcom/sec/android/app/popupuireceiver/popupNITZ;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-virtual {v1}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-virtual {v1}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 47
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-virtual {v1}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040004

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 49
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->startActivity(Landroid/content/Intent;)V

    .line 52
    const-string v1, "PopupuiReceiver"

    const-string v2, "popupNITZ.java: OK button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v1, v1, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5b

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v2, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v2, v2, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    .line 59
    const-string v1, "PopupuiReceiver"

    const-string v2, "popupNITZ.java: OK btn unReigister NITZQUITReceiver2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_5b
    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-virtual {v1}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->finish()V

    .line 63
    return-void
.end method
