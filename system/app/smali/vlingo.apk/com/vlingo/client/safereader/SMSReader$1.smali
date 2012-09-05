.class Lcom/vlingo/client/safereader/SMSReader$1;
.super Ljava/lang/Object;
.source "SMSReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SMSReader;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/safereader/SMSReader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SMSReader;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vlingo/client/safereader/SMSReader$1;->this$0:Lcom/vlingo/client/safereader/SMSReader;

    iput-object p2, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 57
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderRunning()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 58
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->start(Z)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 62
    .local v3, start:J
    :goto_12
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderRunning()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v7, v3

    cmp-long v5, v5, v7

    if-gez v5, :cond_2e

    .line 66
    const-wide/16 v5, 0xfa

    :try_start_25
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_12

    .line 67
    :catch_29
    move-exception v2

    .line 68
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    .line 73
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #start:J
    :cond_2e
    iget-object v5, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_51

    .line 77
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 78
    iget-object v5, p0, Lcom/vlingo/client/safereader/SMSReader$1;->this$0:Lcom/vlingo/client/safereader/SMSReader;

    iget-object v6, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$context:Landroid/content/Context;

    #calls: Lcom/vlingo/client/safereader/SMSReader;->handleIncomingSMS(Landroid/os/Bundle;Landroid/content/Context;)V
    invoke-static {v5, v6, v7}, Lcom/vlingo/client/safereader/SMSReader;->access$000(Lcom/vlingo/client/safereader/SMSReader;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 83
    :cond_51
    :goto_51
    return-void

    .line 79
    :cond_52
    const-string v5, "com.android.mms.MMS_BR_FOR_VLINGO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 80
    iget-object v5, p0, Lcom/vlingo/client/safereader/SMSReader$1;->this$0:Lcom/vlingo/client/safereader/SMSReader;

    iget-object v6, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/vlingo/client/safereader/SMSReader$1;->val$context:Landroid/content/Context;

    #calls: Lcom/vlingo/client/safereader/SMSReader;->handleIncomingMMS(Landroid/os/Bundle;Landroid/content/Context;)V
    invoke-static {v5, v6, v7}, Lcom/vlingo/client/safereader/SMSReader;->access$100(Lcom/vlingo/client/safereader/SMSReader;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_51
.end method
