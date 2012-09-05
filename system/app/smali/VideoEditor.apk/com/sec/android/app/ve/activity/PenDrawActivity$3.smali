.class Lcom/sec/android/app/ve/activity/PenDrawActivity$3;
.super Ljava/lang/Object;
.source "PenDrawActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/PenDrawActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "button"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e2

    .line 378
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 320
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$1(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #setter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$2(Lcom/sec/android/app/ve/activity/PenDrawActivity;Z)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->setupPaint(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$0(Lcom/sec/android/app/ve/activity/PenDrawActivity;Z)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getColorSelected()I

    move-result v1

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->drawUnderLine(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$3(Lcom/sec/android/app/ve/activity/PenDrawActivity;I)V

    goto :goto_9

    .line 328
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$4(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$1(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$4(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move v5, v2

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->show(Landroid/view/View;IIII)V

    goto :goto_9

    .line 337
    :pswitch_58
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$1(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #setter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$2(Lcom/sec/android/app/ve/activity/PenDrawActivity;Z)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->setupPaint(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$0(Lcom/sec/android/app/ve/activity/PenDrawActivity;Z)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getColorSelected()I

    move-result v1

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->drawUnderLine(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$3(Lcom/sec/android/app/ve/activity/PenDrawActivity;I)V

    goto :goto_9

    .line 344
    :cond_78
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$4(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$1(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #getter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$4(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move v5, v2

    .line 346
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->show(Landroid/view/View;IIII)V

    goto/16 :goto_9

    .line 353
    :pswitch_a7
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->undo()V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updateUndoRedoButtons()V

    goto/16 :goto_9

    .line 359
    :pswitch_b3
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->redo()V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updateUndoRedoButtons()V

    goto/16 :goto_9

    .line 366
    :pswitch_bf
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    iget-boolean v0, v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    if-eqz v0, :cond_d2

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->showSaveDialog(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$5(Lcom/sec/android/app/ve/activity/PenDrawActivity;I)V

    goto/16 :goto_9

    .line 370
    :cond_d2
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #setter for: Lcom/sec/android/app/ve/activity/PenDrawActivity;->nDialogId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$6(Lcom/sec/android/app/ve/activity/PenDrawActivity;I)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->closeActivity()V
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$7(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    goto/16 :goto_9

    .line 317
    :pswitch_data_e2
    .packed-switch 0x7f0b0025
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_58
        :pswitch_a7
        :pswitch_b3
    .end packed-switch
.end method
