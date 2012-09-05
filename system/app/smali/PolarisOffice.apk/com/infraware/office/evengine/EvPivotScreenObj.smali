.class Lcom/infraware/office/evengine/EvPivotScreenObj;
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
    .line 393
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 394
    iput p2, p0, Lcom/infraware/office/evengine/EvPivotScreenObj;->m_bLandScape:I

    .line 395
    iput p3, p0, Lcom/infraware/office/evengine/EvPivotScreenObj;->m_nWidth:I

    .line 396
    iput p4, p0, Lcom/infraware/office/evengine/EvPivotScreenObj;->m_nHeight:I

    .line 397
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 5

    .prologue
    .line 401
    iget-object v0, p0, Lcom/infraware/office/evengine/EvPivotScreenObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvPivotScreenObj;->m_bLandScape:I

    iget v2, p0, Lcom/infraware/office/evengine/EvPivotScreenObj;->m_nWidth:I

    iget v3, p0, Lcom/infraware/office/evengine/EvPivotScreenObj;->m_nHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/evengine/EvNative;->IPivotScreen(III)V

    .line 402
    return-void
.end method
