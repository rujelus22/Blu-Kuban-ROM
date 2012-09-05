.class Lcom/vlingo/client/car/sms/SMSSendingView$1;
.super Ljava/lang/Object;
.source "SMSSendingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/sms/SMSSendingView;->onDelegateAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSSendingView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSSendingView;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSSendingView$1;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView$1;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    const/4 v1, 0x1

    #setter for: Lcom/vlingo/client/car/sms/SMSSendingView;->cancelled:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/sms/SMSSendingView;->access$002(Lcom/vlingo/client/car/sms/SMSSendingView;Z)Z

    .line 81
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView$1;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/sms/SMSSendingView;->overloadingBottomContainer:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/sms/SMSSendingView;->access$102(Lcom/vlingo/client/car/sms/SMSSendingView;Z)Z

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView$1;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    #getter for: Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSSendingView;->access$200(Lcom/vlingo/client/car/sms/SMSSendingView;)Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->scrollBack()V

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView$1;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/sms/SMSSendingView;->cancelButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/vlingo/client/car/sms/SMSSendingView;->access$302(Lcom/vlingo/client/car/sms/SMSSendingView;Landroid/widget/Button;)Landroid/widget/Button;

    .line 84
    return-void
.end method
