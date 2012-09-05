.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;
.super Ljava/lang/Object;
.source "ConnectActivityTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 398
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->fileDelete()V

    .line 400
    sget-boolean v4, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connected:Z

    if-nez v4, :cond_16

    .line 402
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4$1;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 416
    :cond_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const/high16 v4, 0x13a0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->startActivity(Landroid/content/Intent;)V

    .line 425
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v4

    const/16 v5, 0x2f1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    .line 427
    const/4 v4, 0x1

    const-string v5, "USB_CONNECTED ServerSocket_Close"

    invoke-static {v4, v5}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Close()I

    .line 431
    const-wide/16 v4, 0x1f4

    :try_start_45
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_6b

    .line 435
    :goto_48
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v3, sendIntent:Landroid/content/Intent;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.KIESWIFI_DISCONNECT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v2, intent2:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 443
    return-void

    .line 432
    .end local v2           #intent2:Landroid/content/Intent;
    .end local v3           #sendIntent:Landroid/content/Intent;
    :catch_6b
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_48
.end method
