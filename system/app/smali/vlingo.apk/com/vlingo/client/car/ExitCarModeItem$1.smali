.class Lcom/vlingo/client/car/ExitCarModeItem$1;
.super Ljava/lang/Object;
.source "ExitCarModeItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/ExitCarModeItem;->onDelegateAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/ExitCarModeItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/ExitCarModeItem;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vlingo/client/car/ExitCarModeItem$1;->this$0:Lcom/vlingo/client/car/ExitCarModeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem$1;->this$0:Lcom/vlingo/client/car/ExitCarModeItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vlingo/client/car/ExitCarModeItem;->overloadingBottomContainer:Z

    .line 76
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem$1;->this$0:Lcom/vlingo/client/car/ExitCarModeItem;

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0, v2}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem$1;->this$0:Lcom/vlingo/client/car/ExitCarModeItem;

    #setter for: Lcom/vlingo/client/car/ExitCarModeItem;->cancelButton:Landroid/widget/Button;
    invoke-static {v0, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->access$002(Lcom/vlingo/client/car/ExitCarModeItem;Landroid/widget/Button;)Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem$1;->this$0:Lcom/vlingo/client/car/ExitCarModeItem;

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 79
    return-void
.end method
