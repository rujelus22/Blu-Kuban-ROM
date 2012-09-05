.class Lcom/samsung/wimax/napid/EapMethodType$7;
.super Ljava/lang/Object;
.source "EapMethodType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapMethodType;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 2
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapMethodType$7;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 999
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$7;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v2, v1, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 1000
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$7;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #getter for: Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$1600(Lcom/samsung/wimax/napid/EapMethodType;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1001
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$7;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->eapTypeValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1002
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$7;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #getter for: Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$1600(Lcom/samsung/wimax/napid/EapMethodType;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1003
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$7;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->eapTypeValue:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$7;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/napid/EapMethodType;->dismissDialog(I)V

    .line 1005
    return-void
.end method
