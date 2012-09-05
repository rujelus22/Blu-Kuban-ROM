.class Lcom/infraware/office/evengine/EvZoomInOutObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bI:I

.field private m_eKey:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;II)V
    .registers 4
    .parameter "a_Native"
    .parameter "a_bI"
    .parameter "a_eKey"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 198
    iput p2, p0, Lcom/infraware/office/evengine/EvZoomInOutObj;->m_bI:I

    .line 199
    iput p3, p0, Lcom/infraware/office/evengine/EvZoomInOutObj;->m_eKey:I

    .line 200
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/infraware/office/evengine/EvZoomInOutObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvZoomInOutObj;->m_bI:I

    iget v2, p0, Lcom/infraware/office/evengine/EvZoomInOutObj;->m_eKey:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvNative;->IZoomInOut(II)V

    .line 205
    return-void
.end method
