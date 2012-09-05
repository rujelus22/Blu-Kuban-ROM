.class Lcom/infraware/office/evengine/EvFindWordNextObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bDirUp:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;I)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_bDirUp"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 643
    iput p2, p0, Lcom/infraware/office/evengine/EvFindWordNextObj;->m_bDirUp:I

    .line 644
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/infraware/office/evengine/EvFindWordNextObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvFindWordNextObj;->m_bDirUp:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IFindWordNext(I)V

    .line 649
    return-void
.end method
