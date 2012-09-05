.class Lcom/infraware/office/evengine/EvSetPageMapObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bDrawContents:I

.field private m_bGenerateDrawEvt:I

.field private m_ePos:I

.field private m_nColMargin:I

.field private m_nMode:I

.field private m_nRowMargin:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIIIII)V
    .registers 8
    .parameter "a_Native"
    .parameter "a_nMode"
    .parameter "a_bDrawContents"
    .parameter "a_ePos"
    .parameter "a_bGenerateDrawEvt"
    .parameter "a_nRowMargin"
    .parameter "a_nColMargin"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 434
    iput p2, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_nMode:I

    .line 435
    iput p3, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_bDrawContents:I

    .line 436
    iput p4, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_ePos:I

    .line 437
    iput p5, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_bGenerateDrawEvt:I

    .line 438
    iput p6, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_nRowMargin:I

    .line 439
    iput p7, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_nColMargin:I

    .line 440
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 8

    .prologue
    .line 444
    iget-object v0, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_nMode:I

    iget v2, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_bDrawContents:I

    iget v3, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_ePos:I

    iget v4, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_bGenerateDrawEvt:I

    iget v5, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_nRowMargin:I

    iget v6, p0, Lcom/infraware/office/evengine/EvSetPageMapObj;->m_nColMargin:I

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISetPageMap(IIIIII)V

    .line 445
    return-void
.end method
