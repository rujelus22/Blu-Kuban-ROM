.class Lcom/syncmldstmo/smlCheckRoaming$7;
.super Ljava/lang/Object;
.source "smlCheckRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlCheckRoaming;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlCheckRoaming;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlCheckRoaming;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckRoaming$7;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetBackgroundState()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    invoke-static {v1}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 107
    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 108
    invoke-static {v1}, Lcom/syncmldstmo/base/smlAgent;->smlSetStartSyncAfterCP(Z)V

    .line 110
    :cond_10
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$7;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlCheckRoaming;->finish()V

    .line 111
    return-void
.end method
