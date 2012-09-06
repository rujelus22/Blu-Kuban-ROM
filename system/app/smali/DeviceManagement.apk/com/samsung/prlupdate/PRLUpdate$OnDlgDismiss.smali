.class Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;
.super Ljava/lang/Object;
.source "PRLUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/prlupdate/PRLUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDlgDismiss"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/prlupdate/PRLUpdate;


# direct methods
.method private constructor <init>(Lcom/samsung/prlupdate/PRLUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/prlupdate/PRLUpdate;Lcom/samsung/prlupdate/PRLUpdate$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dlg"

    .prologue
    .line 673
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDlgDismiss dlg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDlgDismiss mPrgDlg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #calls: Lcom/samsung/prlupdate/PRLUpdate;->prlDone()V
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$300(Lcom/samsung/prlupdate/PRLUpdate;)V

    .line 676
    return-void
.end method
