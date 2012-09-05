.class Lcom/cooliris/media/GridViewState;
.super Lcom/cooliris/media/GridLayerState;
.source "GridFocusControl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cooliris/media/GridLayerState;-><init>()V

    return-void
.end method


# virtual methods
.method updateFocusSlot(Lcom/cooliris/media/GridFocusControl;Lcom/cooliris/media/GridLayerState;)V
    .registers 4
    .parameter "focusControl"
    .parameter "state"

    .prologue
    .line 75
    iget-object v0, p1, Lcom/cooliris/media/GridFocusControl;->timeLineState:Lcom/cooliris/media/GridLayerState;

    if-ne p2, v0, :cond_7

    .line 76
    invoke-virtual {p0, p2}, Lcom/cooliris/media/GridViewState;->clearFocus(Lcom/cooliris/media/GridLayerState;)V

    .line 78
    :cond_7
    return-void
.end method
