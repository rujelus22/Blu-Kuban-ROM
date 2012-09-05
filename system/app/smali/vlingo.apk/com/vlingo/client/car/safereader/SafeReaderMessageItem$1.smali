.class Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;
.super Landroid/os/Handler;
.source "SafeReaderMessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 69
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->access$000(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->access$100(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 70
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->access$210(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)I

    .line 71
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->countdown:I
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->access$200(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)I

    move-result v0

    if-gtz v0, :cond_2a

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->access$300(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->scrollHome()V

    .line 77
    :cond_29
    :goto_29
    return-void

    .line 74
    :cond_2a
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;->this$0:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    #getter for: Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCountdownHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->access$400(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_29
.end method
