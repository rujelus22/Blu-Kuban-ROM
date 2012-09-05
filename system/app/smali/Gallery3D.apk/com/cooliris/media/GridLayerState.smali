.class abstract Lcom/cooliris/media/GridLayerState;
.super Ljava/lang/Object;
.source "GridFocusControl.java"


# instance fields
.field private mCurrentSelectedSlot:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/GridLayerState;->mCurrentSelectedSlot:I

    return-void
.end method


# virtual methods
.method protected clearFocus(Lcom/cooliris/media/GridLayerState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cooliris/media/GridLayerState;->setSelectionSlot(I)V

    .line 59
    return-void
.end method

.method getSelectionSlot()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/cooliris/media/GridLayerState;->mCurrentSelectedSlot:I

    return v0
.end method

.method setSelectionSlot(I)V
    .registers 2
    .parameter "selected_slot"

    .prologue
    .line 52
    iput p1, p0, Lcom/cooliris/media/GridLayerState;->mCurrentSelectedSlot:I

    .line 53
    return-void
.end method

.method updateFocusSlot(Lcom/cooliris/media/GridFocusControl;Lcom/cooliris/media/GridLayerState;)V
    .registers 3
    .parameter "focusControl"
    .parameter "state"

    .prologue
    .line 60
    return-void
.end method
