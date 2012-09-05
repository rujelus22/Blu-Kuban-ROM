.class Lcom/infraware/office/evengine/EvRotateObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eRotateType:I

.field private m_nAngle:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;II)V
    .registers 4
    .parameter "a_Native"
    .parameter "a_eRotateType"
    .parameter "a_nAngle"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 315
    iput p2, p0, Lcom/infraware/office/evengine/EvRotateObj;->m_eRotateType:I

    .line 316
    iput p3, p0, Lcom/infraware/office/evengine/EvRotateObj;->m_nAngle:I

    .line 317
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/infraware/office/evengine/EvRotateObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvRotateObj;->m_eRotateType:I

    iget v2, p0, Lcom/infraware/office/evengine/EvRotateObj;->m_nAngle:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvNative;->IRotate(II)V

    .line 322
    return-void
.end method
