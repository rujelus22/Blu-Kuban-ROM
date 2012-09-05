.class Lcom/samsung/prlupdate/PRLUpdate$11;
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
    .line 388
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$11;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 391
    const-string v0, "PRLUpdate"

    const-string v1, "onCreateDialog DIALOG_HFA_PRL_UPDAT_SCREEN onClick..... 6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$11;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    const/4 v1, 0x6

    #setter for: Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I
    invoke-static {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$402(Lcom/samsung/prlupdate/PRLUpdate;I)I

    .line 395
    return-void
.end method
