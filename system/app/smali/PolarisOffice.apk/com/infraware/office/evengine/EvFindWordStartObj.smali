.class Lcom/infraware/office/evengine/EvFindWordStartObj;
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
    .line 625
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 626
    iput p2, p0, Lcom/infraware/office/evengine/EvFindWordStartObj;->m_nXpos:I

    .line 627
    iput p3, p0, Lcom/infraware/office/evengine/EvFindWordStartObj;->m_nYpos:I

    .line 628
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 4

    .prologue
    .line 632
    iget-object v0, p0, Lcom/infraware/office/evengine/EvFindWordStartObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvFindWordStartObj;->m_nXpos:I

    iget v2, p0, Lcom/infraware/office/evengine/EvFindWordStartObj;->m_nYpos:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvNative;->IFindWordStart(II)V

    .line 633
    return-void
.end method
