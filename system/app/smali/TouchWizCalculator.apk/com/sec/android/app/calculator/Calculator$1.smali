.class Lcom/sec/android/app/calculator/Calculator$1;
.super Landroid/os/Handler;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/calculator/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$200(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$200(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    iget-object v0, v0, Lcom/sec/android/app/calculator/Calculator;->cursorHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    :cond_39
    :goto_39
    return-void

    .line 259
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_39
.end method
