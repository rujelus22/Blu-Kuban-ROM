.class Lcom/vlingo/client/car/memo/MemoController$1;
.super Ljava/lang/Object;
.source "MemoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/memo/MemoController;->onSaveMemo(Lcom/vlingo/client/car/memo/MemoMessageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/memo/MemoController;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/memo/MemoController;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoController$1;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$1;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    #getter for: Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/memo/MemoController;->access$000(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$1;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    #getter for: Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/memo/MemoController;->access$000(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 118
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$1;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    #getter for: Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/memo/MemoController;->access$000(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->dismiss()V

    .line 119
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$1;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0, v1}, Lcom/vlingo/client/car/memo/MemoController;->access$002(Lcom/vlingo/client/car/memo/MemoController;Lcom/vlingo/client/ui/VProgressDialog;)Lcom/vlingo/client/ui/VProgressDialog;

    .line 121
    :cond_23
    return-void
.end method
