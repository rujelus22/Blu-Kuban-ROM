.class Lcom/syncmldstmo/smluiSyncSetting$21;
.super Ljava/lang/Object;
.source "smluiSyncSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiSyncSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiSyncSetting;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiSyncSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$21;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$21;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting$21;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->selected:I
    invoke-static {v1}, Lcom/syncmldstmo/smluiSyncSetting;->access$800(Lcom/syncmldstmo/smluiSyncSetting;)I

    move-result v1

    #setter for: Lcom/syncmldstmo/smluiSyncSetting;->nPrivate_onoff:I
    invoke-static {v0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->access$902(Lcom/syncmldstmo/smluiSyncSetting;I)I

    .line 649
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$21;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->removeDialog(I)V

    .line 650
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$21;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->nPrivate_onoff:I
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$900(Lcom/syncmldstmo/smluiSyncSetting;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 652
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syncmldstmo/base/smlDebug;->SML_DS_PRIVATE_LOG_ON:Z

    .line 653
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$21;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$600(Lcom/syncmldstmo/smluiSyncSetting;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "private log on"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 660
    :goto_2d
    return-void

    .line 657
    :cond_2e
    sput-boolean v2, Lcom/syncmldstmo/base/smlDebug;->SML_DS_PRIVATE_LOG_ON:Z

    .line 658
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$21;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$600(Lcom/syncmldstmo/smluiSyncSetting;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "private log off"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2d
.end method
