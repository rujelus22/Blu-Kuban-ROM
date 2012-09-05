.class Lcom/infraware/office/evengine/EvChangeScreenObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bLandScape:I

.field private m_nHeight:I

.field private m_nWidth:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;III)V
    .registers 5
    .parameter "a_Native"
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 363
    iput p2, p0, Lcom/infraware/office/evengine/EvChangeScreenObj;->m_bLandScape:I

    .line 364
    iput p3, p0, Lcom/infraware/office/evengine/EvChangeScreenObj;->m_nWidth:I

    .line 365
    iput p4, p0, Lcom/infraware/office/evengine/EvChangeScreenObj;->m_nHeight:I

    .line 366
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 368
    iget-object v0, p0, Lcom/infraware/office/evengine/EvChangeScreenObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvChangeScreenObj;->m_bLandScape:I

    iget v2, p0, Lcom/infraware/office/evengine/EvChangeScreenObj;->m_nWidth:I

    iget v3, p0, Lcom/infraware/office/evengine/EvChangeScreenObj;->m_nHeight:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IChangeScreen(IIIII)V

    .line 369
    return-void
.end method
