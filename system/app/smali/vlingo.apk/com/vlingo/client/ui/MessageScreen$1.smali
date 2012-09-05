.class Lcom/vlingo/client/ui/MessageScreen$1;
.super Landroid/os/Handler;
.source "MessageScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/ui/MessageScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/ui/MessageScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/ui/MessageScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vlingo/client/ui/MessageScreen$1;->this$0:Lcom/vlingo/client/ui/MessageScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vlingo/client/ui/MessageScreen$1;->this$0:Lcom/vlingo/client/ui/MessageScreen;

    #calls: Lcom/vlingo/client/ui/MessageScreen;->updateDisplay()V
    invoke-static {v0}, Lcom/vlingo/client/ui/MessageScreen;->access$000(Lcom/vlingo/client/ui/MessageScreen;)V

    .line 53
    return-void
.end method
