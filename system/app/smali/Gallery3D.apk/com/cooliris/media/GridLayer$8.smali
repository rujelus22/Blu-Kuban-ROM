.class Lcom/cooliris/media/GridLayer$8;
.super Landroid/os/Handler;
.source "GridLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->createMotionAnimationHander()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2565
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$8;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 2568
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 2578
    :cond_5
    :goto_5
    return-void

    .line 2570
    :pswitch_6
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$8;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$400(Lcom/cooliris/media/GridLayer;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2573
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$8;->this$0:Lcom/cooliris/media/GridLayer;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer$8;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mMotionAnimationIndex:I
    invoke-static {v1}, Lcom/cooliris/media/GridLayer;->access$500(Lcom/cooliris/media/GridLayer;)I

    move-result v1

    #calls: Lcom/cooliris/media/GridLayer;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/cooliris/media/GridLayer;->access$600(Lcom/cooliris/media/GridLayer;I)V

    goto :goto_5

    .line 2568
    :pswitch_data_1a
    .packed-switch 0xc8
        :pswitch_6
    .end packed-switch
.end method
