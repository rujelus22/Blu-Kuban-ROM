.class Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$1;
.super Ljava/lang/Object;
.source "EraserSelectorPopup.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$1;->this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$1;->this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    #setter for: Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->nThickness:I
    invoke-static {v0, p2}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->access$0(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$1;->this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->eraserSizeCircle:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->access$1(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;)Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->invalidate()V

    .line 146
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 137
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 132
    return-void
.end method
