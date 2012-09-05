.class Lcom/samsung/handsfreeactivation/StartUp$1;
.super Ljava/lang/Object;
.source "StartUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/StartUp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/StartUp;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/StartUp;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/StartUp$1;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$1;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    #getter for: Lcom/samsung/handsfreeactivation/StartUp;->cancel:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/StartUp;->access$000(Lcom/samsung/handsfreeactivation/StartUp;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$1;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    iget-object v0, v0, Lcom/samsung/handsfreeactivation/StartUp;->mStartUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp$1;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    iget-object v1, v1, Lcom/samsung/handsfreeactivation/StartUp;->mStartUpHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp$1;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    invoke-virtual {v0}, Lcom/samsung/handsfreeactivation/StartUp;->finish()V

    .line 62
    return-void
.end method
