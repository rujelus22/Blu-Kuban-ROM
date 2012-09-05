.class Lcom/infraware/office/evengine/EvBookMarkOnOffObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_bOn:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;I)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_bOn"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 484
    iput p2, p0, Lcom/infraware/office/evengine/EvBookMarkOnOffObj;->m_bOn:I

    .line 485
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/infraware/office/evengine/EvBookMarkOnOffObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvBookMarkOnOffObj;->m_bOn:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IBookMarkOnOff(I)V

    .line 490
    return-void
.end method
