.class Lcom/cooliris/media/Gallery$9;
.super Landroid/os/Handler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Gallery;->createMotionAnimationHander()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/cooliris/media/Gallery$9;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1690
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 1700
    :cond_5
    :goto_5
    return-void

    .line 1692
    :pswitch_6
    iget-object v0, p0, Lcom/cooliris/media/Gallery$9;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z
    invoke-static {v0}, Lcom/cooliris/media/Gallery;->access$1500(Lcom/cooliris/media/Gallery;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1695
    iget-object v0, p0, Lcom/cooliris/media/Gallery$9;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v1, p0, Lcom/cooliris/media/Gallery$9;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mMotionAnimationIndex:I
    invoke-static {v1}, Lcom/cooliris/media/Gallery;->access$1600(Lcom/cooliris/media/Gallery;)I

    move-result v1

    #calls: Lcom/cooliris/media/Gallery;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1700(Lcom/cooliris/media/Gallery;I)V

    goto :goto_5

    .line 1690
    :pswitch_data_1a
    .packed-switch 0xc8
        :pswitch_6
    .end packed-switch
.end method
