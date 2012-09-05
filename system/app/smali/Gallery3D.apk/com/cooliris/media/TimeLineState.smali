.class Lcom/cooliris/media/TimeLineState;
.super Lcom/cooliris/media/GridLayerState;
.source "GridFocusControl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/cooliris/media/GridLayerState;-><init>()V

    return-void
.end method


# virtual methods
.method updateFocusSlot(Lcom/cooliris/media/GridFocusControl;Lcom/cooliris/media/GridLayerState;)V
    .registers 4
    .parameter "focusControl"
    .parameter "state"

    .prologue
    .line 84
    iget-object v0, p1, Lcom/cooliris/media/GridFocusControl;->gridViewState:Lcom/cooliris/media/GridLayerState;

    if-ne p2, v0, :cond_7

    .line 85
    invoke-virtual {p0, p2}, Lcom/cooliris/media/TimeLineState;->clearFocus(Lcom/cooliris/media/GridLayerState;)V

    .line 87
    :cond_7
    return-void
.end method
