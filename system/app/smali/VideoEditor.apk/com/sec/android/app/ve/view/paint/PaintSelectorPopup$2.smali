.class Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$2;
.super Ljava/lang/Object;
.source "PaintSelectorPopup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/paint/ColorChangedListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$2;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 6
    .parameter "color"

    .prologue
    .line 295
    move v1, p1

    .line 297
    .local v1, nTempColor:I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 298
    .local v0, alpha:I
    const/16 v2, 0xff

    if-eq v0, v2, :cond_e

    .line 299
    const-string v2, "Color has alpha"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 300
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$2;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$2;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    iget v3, v3, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v2, v2, v3

    if-eq v2, v1, :cond_26

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$2;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #calls: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setStrokeColor(I)V
    invoke-static {v2, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$2(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;I)V

    .line 303
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updatePenIcon()V

    .line 305
    :cond_26
    return-void
.end method
