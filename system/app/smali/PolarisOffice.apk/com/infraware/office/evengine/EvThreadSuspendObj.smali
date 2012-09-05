.class Lcom/infraware/office/evengine/EvThreadSuspendObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bSuspend:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;I)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_bSuspend"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 771
    iput p2, p0, Lcom/infraware/office/evengine/EvThreadSuspendObj;->m_bSuspend:I

    .line 772
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/infraware/office/evengine/EvThreadSuspendObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvThreadSuspendObj;->m_bSuspend:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IThreadSuspend(I)V

    .line 777
    return-void
.end method
