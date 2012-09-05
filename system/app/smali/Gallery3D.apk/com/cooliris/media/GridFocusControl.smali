.class Lcom/cooliris/media/GridFocusControl;
.super Ljava/lang/Object;
.source "GridFocusControl.java"


# instance fields
.field fullScreenState:Lcom/cooliris/media/GridLayerState;

.field gridViewState:Lcom/cooliris/media/GridLayerState;

.field private mState:Lcom/cooliris/media/GridLayerState;

.field mediaSetState:Lcom/cooliris/media/GridLayerState;

.field timeLineState:Lcom/cooliris/media/GridLayerState;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/cooliris/media/MediaSetState;

    invoke-direct {v0}, Lcom/cooliris/media/MediaSetState;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mediaSetState:Lcom/cooliris/media/GridLayerState;

    .line 5
    new-instance v0, Lcom/cooliris/media/GridViewState;

    invoke-direct {v0}, Lcom/cooliris/media/GridViewState;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/GridFocusControl;->gridViewState:Lcom/cooliris/media/GridLayerState;

    .line 6
    new-instance v0, Lcom/cooliris/media/TimeLineState;

    invoke-direct {v0}, Lcom/cooliris/media/TimeLineState;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/GridFocusControl;->timeLineState:Lcom/cooliris/media/GridLayerState;

    .line 7
    new-instance v0, Lcom/cooliris/media/FullScreenState;

    invoke-direct {v0}, Lcom/cooliris/media/FullScreenState;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/GridFocusControl;->fullScreenState:Lcom/cooliris/media/GridLayerState;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mState:Lcom/cooliris/media/GridLayerState;

    .line 12
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mediaSetState:Lcom/cooliris/media/GridLayerState;

    iput-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mState:Lcom/cooliris/media/GridLayerState;

    .line 13
    return-void
.end method


# virtual methods
.method getFocusSlot()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mState:Lcom/cooliris/media/GridLayerState;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayerState;->getSelectionSlot()I

    move-result v0

    return v0
.end method

.method setFocusSlot(I)V
    .registers 3
    .parameter "selected_slot"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mState:Lcom/cooliris/media/GridLayerState;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/GridLayerState;->setSelectionSlot(I)V

    .line 40
    return-void
.end method

.method public setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 21
    packed-switch p1, :pswitch_data_1c

    .line 36
    :goto_3
    return-void

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mediaSetState:Lcom/cooliris/media/GridLayerState;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridFocusControl;->setState(Lcom/cooliris/media/GridLayerState;)V

    goto :goto_3

    .line 26
    :pswitch_a
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->gridViewState:Lcom/cooliris/media/GridLayerState;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridFocusControl;->setState(Lcom/cooliris/media/GridLayerState;)V

    goto :goto_3

    .line 29
    :pswitch_10
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->timeLineState:Lcom/cooliris/media/GridLayerState;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridFocusControl;->setState(Lcom/cooliris/media/GridLayerState;)V

    goto :goto_3

    .line 32
    :pswitch_16
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->fullScreenState:Lcom/cooliris/media/GridLayerState;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridFocusControl;->setState(Lcom/cooliris/media/GridLayerState;)V

    goto :goto_3

    .line 21
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method setState(Lcom/cooliris/media/GridLayerState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cooliris/media/GridFocusControl;->mState:Lcom/cooliris/media/GridLayerState;

    invoke-virtual {v0, p0, p1}, Lcom/cooliris/media/GridLayerState;->updateFocusSlot(Lcom/cooliris/media/GridFocusControl;Lcom/cooliris/media/GridLayerState;)V

    .line 17
    iput-object p1, p0, Lcom/cooliris/media/GridFocusControl;->mState:Lcom/cooliris/media/GridLayerState;

    .line 18
    return-void
.end method
