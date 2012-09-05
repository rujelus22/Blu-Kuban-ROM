.class Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;
.super Ljava/lang/Object;
.source "SMSMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

.field final synthetic val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    iput-object p2, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    #getter for: Lcom/vlingo/client/car/sms/SMSMainScreen;->listener:Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->access$600(Lcom/vlingo/client/car/sms/SMSMainScreen;)Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;->this$1:Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;

    iget-object v1, v1, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    iget-object v2, v2, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$RecentsAdaptor$1;->val$message:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    iget-object v3, v3, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;->onReplyToContact(Lcom/vlingo/client/car/sms/SMSMainScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method
