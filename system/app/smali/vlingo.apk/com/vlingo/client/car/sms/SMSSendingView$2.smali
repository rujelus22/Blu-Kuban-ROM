.class Lcom/vlingo/client/car/sms/SMSSendingView$2;
.super Ljava/lang/Object;
.source "SMSSendingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/sms/SMSSendingView;->onDelegateAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSSendingView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSSendingView;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSSendingView$2;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView$2;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    #calls: Lcom/vlingo/client/car/sms/SMSSendingView;->sendMessage()V
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSSendingView;->access$400(Lcom/vlingo/client/car/sms/SMSSendingView;)V

    .line 95
    return-void
.end method
