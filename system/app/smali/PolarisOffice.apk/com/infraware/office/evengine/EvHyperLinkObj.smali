.class Lcom/infraware/office/evengine/EvHyperLinkObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eType:I

.field private m_nXPos:I

.field private m_nYPos:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;III)V
    .registers 5
    .parameter "a_Native"
    .parameter "a_eType"
    .parameter "a_nXPos"
    .parameter "a_nYPos"

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 557
    iput p2, p0, Lcom/infraware/office/evengine/EvHyperLinkObj;->m_eType:I

    .line 558
    iput p3, p0, Lcom/infraware/office/evengine/EvHyperLinkObj;->m_nXPos:I

    .line 559
    iput p4, p0, Lcom/infraware/office/evengine/EvHyperLinkObj;->m_nYPos:I

    .line 560
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 5

    .prologue
    .line 564
    iget-object v0, p0, Lcom/infraware/office/evengine/EvHyperLinkObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvHyperLinkObj;->m_eType:I

    iget v2, p0, Lcom/infraware/office/evengine/EvHyperLinkObj;->m_nXPos:I

    iget v3, p0, Lcom/infraware/office/evengine/EvHyperLinkObj;->m_nYPos:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/evengine/EvNative;->IHyperLink(III)V

    .line 565
    return-void
.end method
