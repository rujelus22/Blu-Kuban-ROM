.class Lcom/infraware/office/evengine/EvSearchStartObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bCase:I

.field private m_bDirUp:I

.field private m_bFixedZoom:I

.field private m_bMatchWord:I

.field private m_sFind:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;Ljava/lang/String;IIII)V
    .registers 7
    .parameter "a_Native"
    .parameter "a_sFind"
    .parameter "a_bMatchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_bFixedZoom"

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 592
    iput-object p2, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_sFind:Ljava/lang/String;

    .line 593
    iput p3, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bMatchWord:I

    .line 594
    iput p4, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bCase:I

    .line 595
    iput p5, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bDirUp:I

    .line 596
    iput p6, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bFixedZoom:I

    .line 597
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 7

    .prologue
    .line 601
    iget-object v0, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_sFind:Ljava/lang/String;

    iget v2, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bMatchWord:I

    iget v3, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bCase:I

    iget v4, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bDirUp:I

    iget v5, p0, Lcom/infraware/office/evengine/EvSearchStartObj;->m_bFixedZoom:I

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISearchStart(Ljava/lang/String;IIII)V

    .line 602
    return-void
.end method
