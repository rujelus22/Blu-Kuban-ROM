.class Lcom/syncmldstmo/DSService$2;
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
    .line 171
    iput-object p1, p0, Lcom/syncmldstmo/DSService$2;->this$0:Lcom/syncmldstmo/DSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x1000

    const/4 v2, 0x1

    .line 175
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 176
    if-nez p1, :cond_f

    .line 178
    const-string v0, "msg is null. return"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 240
    :cond_e
    :goto_e
    return-void

    .line 183
    :cond_f
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetAutoSyncReady()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syncmldstmo/DSService;->smlSetAutoSyncReady(Z)V

    .line 186
    :cond_19
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlCheckBeforeStartSync()Z

    move-result v0

    if-nez v0, :cond_25

    .line 188
    const-string v0, "smlCheckBeforeStartSync() false. return"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_e

    .line 192
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_91

    .line 194
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 195
    if-nez v0, :cond_4f

    .line 197
    const-string v0, "AutoSync is false."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/syncmldstmo/DSService;->access$000()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/syncmldstmo/smlCheckStartSanSync;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    invoke-static {}, Lcom/syncmldstmo/DSService;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 205
    :cond_4f
    const-string v0, "SAN START"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 219
    :goto_54
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySyncReset()V

    .line 221
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetRomingState()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 223
    const-string v0, "Roming true..."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 224
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 225
    invoke-static {v2}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/syncmldstmo/DSService;->access$000()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/syncmldstmo/smlCheckRoaming;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-static {}, Lcom/syncmldstmo/DSService;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    :goto_82
    sget-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 239
    sget-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_e

    .line 207
    :cond_91
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9f

    .line 209
    const-string v0, "CP START"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 210
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->smlSetStartSyncAfterCP(Z)V

    goto :goto_54

    .line 214
    :cond_9f
    const-string v0, "AUTOSYNC START"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_54

    .line 233
    :cond_a5
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 234
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 235
    const/16 v0, 0x20

    invoke-static {v0, v4, v4}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_82
.end method
