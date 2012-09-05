.class Lcom/infraware/office/evengine/EvChangeViewMode;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field EEV_VIEW_MODE:I

.field bDraw:I

.field nHeight:I

.field nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIII)V
    .registers 6
    .parameter "a_Native"
    .parameter "a_EEV_VIEW_MODE"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_bDraw"

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 851
    iput p2, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->EEV_VIEW_MODE:I

    .line 852
    iput p3, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->nWidth:I

    .line 853
    iput p4, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->nHeight:I

    .line 854
    iput p5, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->bDraw:I

    .line 855
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 6

    .prologue
    .line 859
    iget-object v0, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->EEV_VIEW_MODE:I

    iget v2, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->nWidth:I

    iget v3, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->nHeight:I

    iget v4, p0, Lcom/infraware/office/evengine/EvChangeViewMode;->bDraw:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/office/evengine/EvNative;->IChangeViewMode(IIII)V

    .line 860
    return-void
.end method
