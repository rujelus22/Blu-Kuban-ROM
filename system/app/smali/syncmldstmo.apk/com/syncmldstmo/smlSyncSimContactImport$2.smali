.class Lcom/syncmldstmo/smlSyncSimContactImport$2;
.super Ljava/lang/Object;
.source "smlSyncSimContactImport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 78
    iput-object p1, p0, Lcom/syncmldstmo/smlSyncSimContactImport$2;->this$0:Lcom/syncmldstmo/smlSyncSimContactImport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncSimContactImport$2;->this$0:Lcom/syncmldstmo/smlSyncSimContactImport;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smlSyncSimContactImport;->removeDialog(I)V

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/smlSyncSimContactImport;->bIsSimContactImport:Z

    .line 84
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncSimContactImport$2;->this$0:Lcom/syncmldstmo/smlSyncSimContactImport;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlSyncSimContactImport;->finish()V

    .line 87
    sget-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    return-void
.end method
