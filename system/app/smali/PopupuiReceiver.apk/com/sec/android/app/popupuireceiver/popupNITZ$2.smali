.class Lcom/sec/android/app/popupuireceiver/popupNITZ$2;
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
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v3, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    #getter for: Lcom/sec/android/app/popupuireceiver/popupNITZ;->MCCvalue:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->access$000(Lcom/sec/android/app/popupuireceiver/popupNITZ;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, initToMCC:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    .local v1, initToMCCedit:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    #getter for: Lcom/sec/android/app/popupuireceiver/popupNITZ;->MCCvalue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->access$000(Lcom/sec/android/app/popupuireceiver/popupNITZ;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-111"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const-string v2, "PopupuiReceiver"

    const-string v3, "popupNITZ.java: cancel button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v2, v2, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_41

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v3, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v3, v3, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    .line 82
    const-string v2, "PopupuiReceiver"

    const-string v3, "popupNITZ.java: cancel btn unReigister NITZQUITReceiver2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_41
    iget-object v2, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-virtual {v2}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->finish()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 90
    .end local v0           #initToMCC:Landroid/content/SharedPreferences;
    .end local v1           #initToMCCedit:Landroid/content/SharedPreferences$Editor;
    :goto_46
    return-void

    .line 86
    :catch_47
    move-exception v2

    goto :goto_46
.end method
