.class Lcom/infraware/office/baseframe/EvBaseView$1;
.super Landroid/os/Handler;
.source "EvBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseView;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_78

    .line 106
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    return-void

    .line 96
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v0, v0, Lcom/infraware/office/baseframe/EvBaseView;->mWidth:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v0, v0, Lcom/infraware/office/baseframe/EvBaseView;->mHeight:I

    if-eqz v0, :cond_5

    .line 98
    :try_start_15
    const-string v0, "EvBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oops!! bitmap sizes are different mWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmapW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmapH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_5f} :catch_75

    .line 101
    :goto_5f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v1, v1, Lcom/infraware/office/baseframe/EvBaseView;->mWidth:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView$1;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->OnSurfaceChanged(II)V

    goto :goto_5

    .line 99
    :catch_75
    move-exception v0

    goto :goto_5f

    .line 94
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
