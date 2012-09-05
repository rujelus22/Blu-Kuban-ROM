.class Lcom/syncmldstmo/smluiStartSync$3;
.super Ljava/lang/Object;
.source "smluiStartSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiStartSync;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiStartSync;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiStartSync;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/syncmldstmo/smluiStartSync$3;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 350
    const-wide/16 v1, 0x7d0

    :try_start_9
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_19

    .line 356
    :goto_c
    const/high16 v1, 0x20

    const-string v2, "START SuspendSync "

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 357
    const/16 v1, 0x2e

    invoke-static {v1, v3, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 376
    :goto_18
    return-void

    .line 352
    :catch_19
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_c

    .line 361
    .end local v0           #e:Ljava/lang/Exception;
    :cond_22
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->setIsStopping(Z)V

    .line 365
    const-wide/16 v1, 0x7d0

    :try_start_28
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_38

    .line 372
    :goto_2b
    sget-object v1, Lcom/syncmldstmo/DSService;->_task:Lcom/syncmldstmo/base/smlTask;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlTask;->smlUserAbort()I

    .line 374
    sget-object v1, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_18

    .line 367
    :catch_38
    move-exception v0

    .line 369
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_2b
.end method
