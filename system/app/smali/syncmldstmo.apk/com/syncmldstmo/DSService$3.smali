.class Lcom/syncmldstmo/DSService$3;
.super Landroid/os/Handler;
.source "DSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/DSService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/DSService;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/DSService;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 249
    if-nez p1, :cond_d

    .line 251
    const-string v0, "msg is null. return"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 307
    :cond_c
    :goto_c
    return-void

    .line 255
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_aa

    .line 299
    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->smlSetStartSyncAfterCP(Z)V

    .line 300
    iget-object v0, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    iget-object v1, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/DSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/DSService;->smlShowToast(Ljava/lang/String;)V

    .line 305
    :cond_23
    :goto_23
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 306
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_c

    .line 258
    :sswitch_31
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetStartSyncAfterCP()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 259
    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->smlSetStartSyncAfterCP(Z)V

    .line 261
    :cond_3a
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetFirstSyncComplete()I

    move-result v0

    if-nez v0, :cond_23

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/syncmldstmo/DSService;->access$000()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/syncmldstmo/smlSyncComplete;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    invoke-static {}, Lcom/syncmldstmo/DSService;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    invoke-static {v3}, Lcom/syncmldstmo/database/smlDb;->smlSetFirstSyncComplete(I)V

    goto :goto_23

    .line 273
    :sswitch_60
    iget-object v0, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    iget-object v1, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/DSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/DSService;->smlShowToast(Ljava/lang/String;)V

    goto :goto_23

    .line 277
    :sswitch_6f
    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->smlSetStartSyncAfterCP(Z)V

    .line 278
    iget-object v0, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    iget-object v1, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/DSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/DSService;->smlShowToast(Ljava/lang/String;)V

    goto :goto_23

    .line 282
    :sswitch_81
    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->smlSetStartSyncAfterCP(Z)V

    .line 283
    iget-object v0, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    iget-object v1, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/DSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/DSService;->smlShowToast(Ljava/lang/String;)V

    goto :goto_23

    .line 291
    :sswitch_93
    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->smlSetStartSyncAfterCP(Z)V

    .line 292
    iget-object v0, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    iget-object v1, p0, Lcom/syncmldstmo/DSService$3;->this$0:Lcom/syncmldstmo/DSService;

    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/DSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/DSService;->smlShowToast(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlMyPhonebookFullReset()V

    goto/16 :goto_23

    .line 255
    nop

    :sswitch_data_aa
    .sparse-switch
        0x1a -> :sswitch_93
        0x1b -> :sswitch_93
        0x1d -> :sswitch_93
        0x22 -> :sswitch_93
        0x30 -> :sswitch_31
        0x39 -> :sswitch_81
        0x3a -> :sswitch_6f
        0x3b -> :sswitch_60
    .end sparse-switch
.end method
