.class Lcom/samsung/prlupdate/PRLUpdate$9;
.super Ljava/lang/Object;
.source "PRLUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/prlupdate/PRLUpdate;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/prlupdate/PRLUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/prlupdate/PRLUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$9;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 352
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog DIALOG_NO_UPD_KEY onClick..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$9;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$500(Lcom/samsung/prlupdate/PRLUpdate;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 356
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$9;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    const/4 v1, 0x6

    #setter for: Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I
    invoke-static {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$402(Lcom/samsung/prlupdate/PRLUpdate;I)I

    .line 358
    :cond_26
    return-void
.end method
