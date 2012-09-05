.class Lcom/arcsoft/widget/QuickView$10;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/QuickView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/QuickView;)V
    .registers 2
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$10;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 7
    .parameter "motionEvent"

    .prologue
    const/16 v4, 0x14

    .line 1302
    const/4 v0, 0x0

    .line 1303
    .local v0, bPrintLog:Z
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    .line 1325
    :cond_a
    :goto_a
    return-void

    .line 1314
    :pswitch_b
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$10;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mTouchMode:I
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$200(Lcom/arcsoft/widget/QuickView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$10;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mIsViewingImage:Z
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$2800(Lcom/arcsoft/widget/QuickView;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$10;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mRespondTiltEvent:Z
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$000(Lcom/arcsoft/widget/QuickView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1316
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$10;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1317
    .local v1, msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1318
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1319
    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$10;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 1303
    :pswitch_data_3c
    .packed-switch 0x43
        :pswitch_b
    .end packed-switch
.end method
