.class Lcom/sec/dsm/system/DSMRingMyMobile$1;
.super Landroid/content/BroadcastReceiver;
.source "DSMRingMyMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMRingMyMobile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dsm/system/DSMRingMyMobile;


# direct methods
.method constructor <init>(Lcom/sec/dsm/system/DSMRingMyMobile;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sec/dsm/system/DSMRingMyMobile$1;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aaaaa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 177
    const-string v2, "receiver +"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 179
    :try_start_11
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$1;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    const-string v3, "PCW Quit by Server"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 180
    new-instance v1, Lcom/sec/dsm/system/DSMManager;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$1;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    #getter for: Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->access$000(Lcom/sec/dsm/system/DSMRingMyMobile;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, im:Lcom/sec/dsm/system/DSMManager;
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->removeDSMRing()V

    .line 182
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$1;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->setOriginalVolume()V

    .line 183
    invoke-static {}, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->release()V

    .line 184
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$1;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->reenableLock()V

    .line 185
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$1;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    #getter for: Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->access$000(Lcom/sec/dsm/system/DSMRingMyMobile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->goToSleepLCD(Landroid/content/Context;)V

    .line 186
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$1;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->finish()V
    :try_end_46
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_11 .. :try_end_46} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_51

    .line 192
    .end local v1           #im:Lcom/sec/dsm/system/DSMManager;
    :goto_46
    const-string v2, "receiver -"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 194
    :cond_4b
    return-void

    .line 187
    :catch_4c
    move-exception v0

    .line 188
    .local v0, e:Lcom/sec/dsm/system/DSMException;
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_46

    .line 189
    .end local v0           #e:Lcom/sec/dsm/system/DSMException;
    :catch_51
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method
