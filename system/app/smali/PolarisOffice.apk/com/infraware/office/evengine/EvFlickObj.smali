.class Lcom/infraware/office/evengine/EvFlickObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_nVelocityX:I

.field private m_nVelocityY:I


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;II)V
    .registers 4
    .parameter "a_Native"
    .parameter "a_nVelocityX"
    .parameter "a_nVelocityY"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 216
    iput p2, p0, Lcom/infraware/office/evengine/EvFlickObj;->m_nVelocityX:I

    .line 217
    iput p3, p0, Lcom/infraware/office/evengine/EvFlickObj;->m_nVelocityY:I

    .line 218
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/infraware/office/evengine/EvFlickObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvFlickObj;->m_nVelocityX:I

    iget v2, p0, Lcom/infraware/office/evengine/EvFlickObj;->m_nVelocityY:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvNative;->IFlick(II)V

    .line 223
    return-void
.end method
