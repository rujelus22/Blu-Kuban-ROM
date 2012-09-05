.class Lcom/samsung/wimax/napid/RealmActivity$3;
.super Ljava/lang/Object;
.source "RealmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/RealmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/RealmActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/RealmActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/samsung/wimax/napid/RealmActivity$3;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 373
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity$3;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    const/4 v2, 0x2

    iput v2, v1, Lcom/samsung/wimax/napid/RealmActivity;->type:I

    .line 374
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity$3;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    #getter for: Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/RealmActivity;->access$500(Lcom/samsung/wimax/napid/RealmActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity$3;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/RealmActivity;->rlmText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity$3;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    #getter for: Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/RealmActivity;->access$500(Lcom/samsung/wimax/napid/RealmActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity$3;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    iget-object v1, v1, Lcom/samsung/wimax/napid/RealmActivity;->rlmText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity$3;->this$0:Lcom/samsung/wimax/napid/RealmActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/napid/RealmActivity;->dismissDialog(I)V

    .line 380
    return-void
.end method
