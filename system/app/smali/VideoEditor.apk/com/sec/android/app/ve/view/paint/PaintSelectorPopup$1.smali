.class Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$1;
.super Ljava/lang/Object;
.source "PaintSelectorPopup.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$1;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 287
    :goto_7
    :pswitch_7
    return-void

    .line 278
    :pswitch_8
    if-eqz p3, :cond_12

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$1;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    add-int/lit8 v1, p2, 0x1

    #calls: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setPenThickness(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$0(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;I)V

    goto :goto_7

    .line 281
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$1;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #calls: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setPenThickness(I)V
    invoke-static {v0, p2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$0(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;I)V

    goto :goto_7

    .line 284
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$1;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    add-int/lit8 v1, p2, 0x1

    #calls: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setPenTransparency(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$1(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;I)V

    goto :goto_7

    .line 275
    :pswitch_data_20
    .packed-switch 0x7f0b0082
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_18
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 269
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 264
    return-void
.end method
