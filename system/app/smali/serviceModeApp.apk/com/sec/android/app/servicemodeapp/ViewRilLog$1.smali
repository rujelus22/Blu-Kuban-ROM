.class Lcom/sec/android/app/servicemodeapp/ViewRilLog$1;
.super Landroid/os/Handler;
.source "ViewRilLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/ViewRilLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_46

    .line 134
    :goto_6
    return-void

    .line 110
    :sswitch_7
    const-string v0, "ViewRilLog"

    const-string v1, "PARSING_DONE ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$002(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$100(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$100(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$000()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$1;->this$0:Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    #getter for: Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->access$100(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 122
    :sswitch_35
    const-string v0, "ViewRilLog"

    const-string v1, "Ril dump Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 127
    :sswitch_3d
    const-string v0, "ViewRilLog"

    const-string v1, "EVENT_TICK!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 106
    nop

    :sswitch_data_46
    .sparse-switch
        0x3e9 -> :sswitch_3d
        0x3f1 -> :sswitch_35
        0x3f2 -> :sswitch_7
    .end sparse-switch
.end method
