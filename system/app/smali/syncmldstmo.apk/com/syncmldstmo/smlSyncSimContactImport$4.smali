.class Lcom/syncmldstmo/smlSyncSimContactImport$4;
.super Ljava/lang/Object;
.source "smlSyncSimContactImport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlSyncSimContactImport;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlSyncSimContactImport;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlSyncSimContactImport;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/syncmldstmo/smlSyncSimContactImport$4;->this$0:Lcom/syncmldstmo/smlSyncSimContactImport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 47
    const/16 v2, 0x40

    const-string v3, "[RECEIVER] start SIM contac import."

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncSimContactImport$4;->this$0:Lcom/syncmldstmo/smlSyncSimContactImport;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/syncmldstmo/smlSyncSimContactImport;->removeDialog(I)V

    .line 49
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncSimContactImport$4;->this$0:Lcom/syncmldstmo/smlSyncSimContactImport;

    invoke-virtual {v2}, Lcom/syncmldstmo/smlSyncSimContactImport;->finish()V

    .line 54
    :try_start_13
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_IMPORT_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "Mode"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string v2, "CP_Start"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncSimContactImport$4;->this$0:Lcom/syncmldstmo/smlSyncSimContactImport;

    invoke-virtual {v2, v1}, Lcom/syncmldstmo/smlSyncSimContactImport;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 63
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2b
    return-void

    .line 59
    :catch_2c
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_2b
.end method
