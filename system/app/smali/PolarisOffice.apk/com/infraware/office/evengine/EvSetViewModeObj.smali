.class Lcom/infraware/office/evengine/EvSetViewModeObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_eViewMode:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;I)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_eViewMode"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 346
    iput p2, p0, Lcom/infraware/office/evengine/EvSetViewModeObj;->m_eViewMode:I

    .line 347
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/infraware/office/evengine/EvSetViewModeObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvSetViewModeObj;->m_eViewMode:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->ISetViewMode(I)V

    .line 352
    return-void
.end method
