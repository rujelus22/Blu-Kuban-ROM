.class Lcom/infraware/office/evengine/EvThumbnailObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field m_eMode:I

.field m_nHeight:I

.field m_nPages:I

.field m_nStartPage:I

.field m_nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIIII)V
    .registers 7
    .parameter "a_Native"
    .parameter "a_eMode"
    .parameter "a_nPages"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 464
    iput p2, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_eMode:I

    .line 465
    iput p3, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nPages:I

    .line 466
    iput p4, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nWidth:I

    .line 467
    iput p5, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nHeight:I

    .line 468
    iput p6, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nStartPage:I

    .line 469
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 7

    .prologue
    .line 473
    iget-object v0, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_eMode:I

    iget v2, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nPages:I

    iget v3, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nWidth:I

    iget v4, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nHeight:I

    iget v5, p0, Lcom/infraware/office/evengine/EvThumbnailObj;->m_nStartPage:I

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IThumbnail(IIIII)V

    .line 474
    return-void
.end method
