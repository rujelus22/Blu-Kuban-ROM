.class Lcom/samsung/handsfreeactivation/ActFail$1;
.super Ljava/lang/Object;
.source "ActFail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/ActFail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/ActFail;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/ActFail;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/ActFail$1;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail$1;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActFail;->access$000(Lcom/samsung/handsfreeactivation/ActFail;)Lcom/samsung/client/DMApp;

    move-result-object v0

    iput v3, v0, Lcom/samsung/client/DMApp;->numRetries:I

    .line 49
    const-string v0, "ActFail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel numRetries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/handsfreeactivation/ActFail$1;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v2}, Lcom/samsung/handsfreeactivation/ActFail;->access$000(Lcom/samsung/handsfreeactivation/ActFail;)Lcom/samsung/client/DMApp;

    move-result-object v2

    iget v2, v2, Lcom/samsung/client/DMApp;->numRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail$1;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->cancel:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActFail;->access$100(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail$1;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #calls: Lcom/samsung/handsfreeactivation/ActFail;->doCancel()V
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActFail;->access$200(Lcom/samsung/handsfreeactivation/ActFail;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail$1;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    invoke-virtual {v0}, Lcom/samsung/handsfreeactivation/ActFail;->finish()V

    .line 53
    return-void
.end method
