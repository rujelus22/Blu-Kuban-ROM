.class Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;
.super Ljava/lang/Object;
.source "SafeReaderNotificationPopupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "arg1"
    .parameter "which"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_26

    .line 73
    :goto_3
    return-void

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    #calls: Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->startRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->access$000(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V

    goto :goto_3

    .line 63
    :pswitch_a
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->isSMS:Z
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->access$100(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 64
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    const-string v1, ""

    #calls: Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->sendSMS(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->access$200(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;Ljava/lang/String;)V

    .line 70
    :goto_19
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->finish()V

    goto :goto_3

    .line 68
    :cond_1f
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    #calls: Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->sendEmail()V
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->access$300(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V

    goto :goto_19

    .line 58
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method
