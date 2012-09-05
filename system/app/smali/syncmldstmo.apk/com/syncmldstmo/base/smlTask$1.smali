.class Lcom/syncmldstmo/base/smlTask$1;
.super Landroid/os/Handler;
.source "smlTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/base/smlTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/base/smlTask;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/base/smlTask;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syncmldstmo/base/smlTask$1;->this$0:Lcom/syncmldstmo/base/smlTask;

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask$1;->this$0:Lcom/syncmldstmo/base/smlTask;

    invoke-virtual {v0, p1}, Lcom/syncmldstmo/base/smlTask;->smlTaskHandler(Landroid/os/Message;)Z

    .line 47
    return-void
.end method
