.class Lcom/sec/android/app/myfiles/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MainActivity$4;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, action:Ljava/lang/String;
    const-string v2, "MyFiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainActivity : BroadcastReceiver - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 324
    sget-object v2, Lcom/sec/android/app/myfiles/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Utils;->isMountedStateCheck(Landroid/content/Context;)V

    .line 326
    const-string v2, "MyFiles"

    const-string v3, "MainActivity : BroadcastReceiver - ACTION_MEDIA_MOUNTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivity$4;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    #calls: Lcom/sec/android/app/myfiles/MainActivity;->refreshActivity()V
    invoke-static {v2}, Lcom/sec/android/app/myfiles/MainActivity;->access$000(Lcom/sec/android/app/myfiles/MainActivity;)V

    .line 376
    :cond_35
    :goto_35
    return-void

    .line 358
    :cond_36
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 359
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Utils;->setMediaScannerScannig(Z)V

    goto :goto_35

    .line 360
    :cond_43
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 361
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Utils;->setMediaScannerScannig(Z)V

    goto :goto_35

    .line 366
    :cond_50
    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_35

    const-string v2, "ScreenCapture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 369
    const-string v2, "MyFiles"

    const-string v3, "MainActivity : BroadcastReceiver - ScreenCapture"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivity$4;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    #calls: Lcom/sec/android/app/myfiles/MainActivity;->refreshActivity()V
    invoke-static {v2}, Lcom/sec/android/app/myfiles/MainActivity;->access$000(Lcom/sec/android/app/myfiles/MainActivity;)V

    goto :goto_35

    .line 373
    .end local v1           #path:Ljava/lang/String;
    :cond_73
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 374
    sget-object v2, Lcom/sec/android/app/myfiles/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Utils;->isMountedStateCheck(Landroid/content/Context;)V

    goto :goto_35
.end method
