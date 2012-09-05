.class Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;
.super Landroid/os/Handler;
.source "TimeLineHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 41
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5a

    .line 59
    :cond_5
    :goto_5
    return-void

    .line 43
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    #getter for: Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAutoScroll:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->access$0(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    .local v0, direction:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_46

    .line 46
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    iget-object v3, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getScrollX()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 49
    :goto_2c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 50
    .local v1, msg1:Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    #getter for: Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->access$1(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 48
    .end local v1           #msg1:Landroid/os/Message;
    :cond_46
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    iget-object v3, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getScrollX()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    iget-object v4, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;->this$0:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    goto :goto_2c

    .line 41
    :pswitch_data_5a
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
