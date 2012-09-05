.class Lcom/infraware/office/evengine/EvMovePageObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eMoveType:I

.field private m_nPage:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;II)V
    .registers 4
    .parameter "a_Native"
    .parameter "a_eMoveType"
    .parameter "a_nPage"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 180
    iput p2, p0, Lcom/infraware/office/evengine/EvMovePageObj;->m_eMoveType:I

    .line 181
    iput p3, p0, Lcom/infraware/office/evengine/EvMovePageObj;->m_nPage:I

    .line 182
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/infraware/office/evengine/EvMovePageObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvMovePageObj;->m_eMoveType:I

    iget v2, p0, Lcom/infraware/office/evengine/EvMovePageObj;->m_nPage:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvNative;->IMovePage(II)V

    .line 187
    return-void
.end method
