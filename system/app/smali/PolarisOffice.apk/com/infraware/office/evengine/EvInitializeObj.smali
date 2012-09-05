.class Lcom/infraware/office/evengine/EvInitializeObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bFrameBufferSwap:I

.field private m_bUseAutoBookmark:I

.field private m_nBits:I

.field private m_nBookmarkType:I

.field private m_nDpi:I

.field private m_nHeight:I

.field private m_nScrollModeType:I

.field private m_nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIIIIIII)V
    .registers 10
    .parameter "a_Native"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nScrollModeType"
    .parameter "a_nBookmarkType"
    .parameter "a_bUseAutoBookmark"
    .parameter "a_nBits"
    .parameter "a_bFrameBufferSwap"
    .parameter "a_nDpi"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 38
    iput p2, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nWidth:I

    .line 39
    iput p3, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nHeight:I

    .line 40
    iput p4, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nScrollModeType:I

    .line 41
    iput p5, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nBookmarkType:I

    .line 42
    iput p6, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_bUseAutoBookmark:I

    .line 43
    iput p7, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nBits:I

    .line 44
    iput p8, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_bFrameBufferSwap:I

    .line 45
    iput p9, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nDpi:I

    .line 46
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 10

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInitializeObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nWidth:I

    .line 51
    iget v2, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nHeight:I

    .line 52
    iget v3, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nScrollModeType:I

    .line 53
    iget v4, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nBookmarkType:I

    .line 54
    iget v5, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_bUseAutoBookmark:I

    .line 55
    iget v6, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nBits:I

    .line 56
    iget v7, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_bFrameBufferSwap:I

    .line 57
    iget v8, p0, Lcom/infraware/office/evengine/EvInitializeObj;->m_nDpi:I

    .line 50
    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->IInitialize(IIIIIIII)V

    .line 58
    return-void
.end method
