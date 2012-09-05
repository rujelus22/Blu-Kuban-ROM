.class Lcom/vlingo/client/car/sms/SMSMessageView$2;
.super Ljava/lang/Object;
.source "SMSMessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/sms/SMSMessageView;->showMessageEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSMessageView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSMessageView;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMessageView$2;->this$0:Lcom/vlingo/client/car/sms/SMSMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView$2;->this$0:Lcom/vlingo/client/car/sms/SMSMessageView;

    #calls: Lcom/vlingo/client/car/sms/SMSMessageView;->openInSMSApp()V
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->access$000(Lcom/vlingo/client/car/sms/SMSMessageView;)V

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 210
    return-void
.end method
