.class Lcom/sec/android/app/servicemodeapp/ViewFDList$1;
.super Landroid/os/Handler;
.source "ViewFDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/ViewFDList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ViewFDList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ViewFDList;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewFDList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 90
    :goto_6
    return-void

    .line 78
    :pswitch_7
    const-string v0, "ViewFDList"

    const-string v1, "[ViewFDList]FD List Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->access$002(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewFDList;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewFDList;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->access$100(Lcom/sec/android/app/servicemodeapp/ViewFDList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewFDList;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewFDList;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->access$100(Lcom/sec/android/app/servicemodeapp/ViewFDList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->access$000()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewFDList;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewFDList;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->access$100(Lcom/sec/android/app/servicemodeapp/ViewFDList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 74
    nop

    :pswitch_data_36
    .packed-switch 0x3f2
        :pswitch_7
    .end packed-switch
.end method
