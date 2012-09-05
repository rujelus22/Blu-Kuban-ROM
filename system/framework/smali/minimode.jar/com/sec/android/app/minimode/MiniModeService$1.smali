.class Lcom/sec/android/app/minimode/MiniModeService$1;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 14
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    const/4 v3, 0x3

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 259
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$300(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_53

    .line 269
    :cond_37
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$1;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    :cond_53
    return-void
.end method
