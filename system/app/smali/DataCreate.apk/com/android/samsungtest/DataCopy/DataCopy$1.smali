.class Lcom/android/samsungtest/DataCopy/DataCopy$1;
.super Landroid/content/BroadcastReceiver;
.source "DataCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/DataCopy/DataCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/DataCopy/DataCopy;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$1;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 281
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$1;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const/4 v1, 0x1

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$002(Lcom/android/samsungtest/DataCopy/DataCopy;Z)Z

    .line 282
    const-string v0, "DataCopyNew"

    const-string v1, "Getting a memory low state intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_19
    :goto_19
    return-void

    .line 283
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 284
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$1;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const/4 v1, 0x0

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$002(Lcom/android/samsungtest/DataCopy/DataCopy;Z)Z

    .line 285
    const-string v0, "DataCopyNew"

    const-string v1, "Getting a memory state ok intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method
