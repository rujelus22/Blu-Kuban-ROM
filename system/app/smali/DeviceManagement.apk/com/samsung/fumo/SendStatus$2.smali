.class Lcom/samsung/fumo/SendStatus$2;
.super Ljava/lang/Object;
.source "SendStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/SendStatus;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/SendStatus;


# direct methods
.method constructor <init>(Lcom/samsung/fumo/SendStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/fumo/SendStatus$2;->this$0:Lcom/samsung/fumo/SendStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus$2;->this$0:Lcom/samsung/fumo/SendStatus;

    #getter for: Lcom/samsung/fumo/SendStatus;->ststimer:Lcom/samsung/fumo/SendStatus$StatusTimer;
    invoke-static {v0}, Lcom/samsung/fumo/SendStatus;->access$000(Lcom/samsung/fumo/SendStatus;)Lcom/samsung/fumo/SendStatus$StatusTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus$StatusTimer;->cancel()V

    .line 84
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus$2;->this$0:Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus;->finish()V

    .line 85
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus$2;->this$0:Lcom/samsung/fumo/SendStatus;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    .line 86
    return-void
.end method
