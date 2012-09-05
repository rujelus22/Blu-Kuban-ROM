.class Lcom/sec/android/app/calculator/EventHandler$1;
.super Landroid/os/Handler;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/calculator/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/EventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/EventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/calculator/EventHandler$1;->this$0:Lcom/sec/android/app/calculator/EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_a

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler$1;->this$0:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v0, v0, Lcom/sec/android/app/calculator/EventHandler;->delst:Z

    if-nez v0, :cond_b

    .line 138
    :cond_a
    :goto_a
    return-void

    .line 135
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler$1;->this$0:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->onBackspace()V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler$1;->this$0:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a
.end method
