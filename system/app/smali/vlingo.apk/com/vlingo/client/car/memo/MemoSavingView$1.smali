.class Lcom/vlingo/client/car/memo/MemoSavingView$1;
.super Ljava/lang/Object;
.source "MemoSavingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/memo/MemoSavingView;->onDelegateAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/memo/MemoSavingView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/memo/MemoSavingView;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoSavingView$1;->this$0:Lcom/vlingo/client/car/memo/MemoSavingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView$1;->this$0:Lcom/vlingo/client/car/memo/MemoSavingView;

    const/4 v1, 0x1

    #setter for: Lcom/vlingo/client/car/memo/MemoSavingView;->cancelled:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/memo/MemoSavingView;->access$002(Lcom/vlingo/client/car/memo/MemoSavingView;Z)Z

    .line 66
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView$1;->this$0:Lcom/vlingo/client/car/memo/MemoSavingView;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/memo/MemoSavingView;->overloadingBottomContainer:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/memo/MemoSavingView;->access$102(Lcom/vlingo/client/car/memo/MemoSavingView;Z)Z

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView$1;->this$0:Lcom/vlingo/client/car/memo/MemoSavingView;

    #getter for: Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;
    invoke-static {v0}, Lcom/vlingo/client/car/memo/MemoSavingView;->access$200(Lcom/vlingo/client/car/memo/MemoSavingView;)Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->scrollBack()V

    .line 68
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView$1;->this$0:Lcom/vlingo/client/car/memo/MemoSavingView;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/memo/MemoSavingView;->cancelButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/vlingo/client/car/memo/MemoSavingView;->access$302(Lcom/vlingo/client/car/memo/MemoSavingView;Landroid/widget/Button;)Landroid/widget/Button;

    .line 69
    return-void
.end method
