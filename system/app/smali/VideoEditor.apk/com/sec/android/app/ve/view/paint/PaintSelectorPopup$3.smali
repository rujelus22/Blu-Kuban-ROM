.class Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;
.super Ljava/lang/Object;
.source "PaintSelectorPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "button"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 314
    .local v0, buttonid:I
    const v1, 0x7f0b008f

    if-ne v0, v1, :cond_f

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    #calls: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->expand()V
    invoke-static {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$3(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V

    .line 355
    :goto_e
    return-void

    .line 318
    :cond_f
    const v1, 0x7f0b0078

    if-ne v0, v1, :cond_1a

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->dismiss()V

    goto :goto_e

    .line 324
    :cond_1a
    packed-switch v0, :pswitch_data_58

    .line 353
    :goto_1d
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->refreshStrokeType()V

    goto :goto_e

    .line 328
    :pswitch_23
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    sget-object v2, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->FOUNTAIN_PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    #setter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$4(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;)V

    goto :goto_1d

    .line 334
    :pswitch_30
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    const/4 v2, 0x1

    iput v2, v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    sget-object v2, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PAINT_BRUSH:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    #setter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$4(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;)V

    goto :goto_1d

    .line 340
    :pswitch_3d
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    const/4 v2, 0x2

    iput v2, v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    sget-object v2, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PENCIL:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    #setter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$4(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;)V

    goto :goto_1d

    .line 346
    :pswitch_4a
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    const/4 v2, 0x3

    iput v2, v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    sget-object v2, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    #setter for: Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->access$4(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;)V

    goto :goto_1d

    .line 324
    nop

    :pswitch_data_58
    .packed-switch 0x7f0b007e
        :pswitch_23
        :pswitch_30
        :pswitch_3d
        :pswitch_4a
    .end packed-switch
.end method
