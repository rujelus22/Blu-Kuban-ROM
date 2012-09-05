.class Lcom/infraware/office/evengine/EvFindWordNextByPosObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_nXpos:I

.field private m_nYpos:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;II)V
    .registers 4
    .parameter "a_Native"
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 660
    iput p2, p0, Lcom/infraware/office/evengine/EvFindWordNextByPosObj;->m_nXpos:I

    .line 661
    iput p3, p0, Lcom/infraware/office/evengine/EvFindWordNextByPosObj;->m_nYpos:I

    .line 662
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 4

    .prologue
    .line 666
    iget-object v0, p0, Lcom/infraware/office/evengine/EvFindWordNextByPosObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvFindWordNextByPosObj;->m_nXpos:I

    iget v2, p0, Lcom/infraware/office/evengine/EvFindWordNextByPosObj;->m_nYpos:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvNative;->IFindWordNextByPos(II)V

    .line 667
    return-void
.end method
