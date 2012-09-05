.class Lcom/samsung/wimax/napid/EapNodeName$3;
.super Ljava/lang/Object;
.source "EapNodeName.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapNodeName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapNodeName;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapNodeName;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapNodeName$3;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 385
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$3;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    const/4 v2, 0x2

    iput v2, v1, Lcom/samsung/wimax/napid/EapNodeName;->type:I

    .line 386
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$3;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #getter for: Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapNodeName;->access$600(Lcom/samsung/wimax/napid/EapNodeName;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$3;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapNodeName;->eapText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$3;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    #getter for: Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapNodeName;->access$600(Lcom/samsung/wimax/napid/EapNodeName;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$3;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapNodeName;->eapText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName$3;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/napid/EapNodeName;->dismissDialog(I)V

    .line 392
    return-void
.end method
