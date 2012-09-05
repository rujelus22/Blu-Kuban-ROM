.class Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$3;
.super Ljava/lang/Object;
.source "EraserSelectorPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$3;->this$0:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->clear()V

    .line 82
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    iput-boolean v1, v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEmpty:Z

    .line 83
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    iput-boolean v1, v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    .line 84
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updateUndoRedoButtons()V

    .line 85
    return-void
.end method
