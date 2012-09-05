.class final Lcom/coremobility/app/vnotes/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/au;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/au;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/au;->a:Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V

    return-void
.end method
