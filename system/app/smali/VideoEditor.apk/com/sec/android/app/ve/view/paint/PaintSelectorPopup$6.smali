.class Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;
.super Ljava/lang/Object;
.source "PaintSelectorPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->changeColor()V
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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$10(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$11(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/ve/view/paint/ColorChangedListener;->onColorChanged(I)V

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$12(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #getter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$11(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setSelectorColor(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 503
    :goto_26
    return-void

    .line 499
    :catch_27
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "<----We cant crash here so ingore -----> "

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method
