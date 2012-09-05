.class Lcom/infraware/office/evengine/EvScrollObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eFactor:I

.field private m_eKey:I

.field private m_eScrollType:I

.field private m_nOffsetX:I

.field private m_nOffsetY:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIIII)V
    .registers 7
    .parameter "a_Native"
    .parameter "a_eScrollType"
    .parameter "a_eFactor"
    .parameter "a_nOffsetX"
    .parameter "a_nOffsetY"
    .parameter "a_eKey"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 294
    iput p2, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_eScrollType:I

    .line 295
    iput p3, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_eFactor:I

    .line 296
    iput p4, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_nOffsetX:I

    .line 297
    iput p5, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_nOffsetY:I

    .line 298
    iput p6, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_eKey:I

    .line 299
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 7

    .prologue
    .line 303
    iget-object v0, p0, Lcom/infraware/office/evengine/EvScrollObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_eScrollType:I

    iget v2, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_eFactor:I

    iget v3, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_nOffsetX:I

    iget v4, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_nOffsetY:I

    iget v5, p0, Lcom/infraware/office/evengine/EvScrollObj;->m_eKey:I

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IScroll(IIIII)V

    .line 304
    return-void
.end method
