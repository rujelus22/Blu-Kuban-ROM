.class Lcom/android/mms/transaction/TransactionService$1$1;
.super Ljava/lang/Object;
.source "TransactionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/transaction/TransactionService$1;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mToastType:I
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)I

    move-result v1

    if-ne v1, v3, :cond_51

    .line 183
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0900e0

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_17
    :goto_17
    if-eqz v0, :cond_50

    .line 190
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 191
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 192
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/mms/transaction/TransactionService;->access$102(Lcom/android/mms/transaction/TransactionService;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 194
    :cond_36
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/mms/transaction/TransactionService;->access$102(Lcom/android/mms/transaction/TransactionService;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 195
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->toast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 197
    :cond_50
    return-void

    .line 184
    :cond_51
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mToastType:I
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 185
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f0900ea

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method
